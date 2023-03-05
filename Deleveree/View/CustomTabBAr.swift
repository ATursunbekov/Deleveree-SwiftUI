//
//  CustomTabBAr.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct CustomTabBAr: View {
    @Binding var selecetedTab: String
    var body: some View {
        HStack(spacing: 0) {
            TabBarButton(image: "house", selectedTab: $selecetedTab)
            TabBarButton(image: "bookmark", selectedTab: $selecetedTab)
            TabBarButton(image: "message", selectedTab: $selecetedTab)
            TabBarButton(image: "person", selectedTab: $selecetedTab)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(30)
        .padding(.horizontal)
        .shadow(color: .black, radius: 10, x: -3, y: 3)
        .offset(y: 20)
    }
}

struct CustomTabBAr_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct TabBarButton: View {
    
    var image: String
    @Binding var selectedTab: String
    var body: some View{
        GeometryReader {
            reader in
            Button(action: {
                withAnimation{
                    selectedTab = image
                }
            }) {
                ZStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundColor(selectedTab == image ? Color(red: 53 / 255, green: 49 / 255, blue: 49 / 255) : Color.black)
                    Image(systemName: image)
                        .font(.system(size: 25, weight: .semibold))
                    //.foregroundColor(Color("TabSelected"))
                        .foregroundColor(Color.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 55)
    }
}
