//
//  Home.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct Home: View {
    @State var selectedTab = "house"
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.white
                .ignoresSafeArea()
            if selectedTab == "house" {
                ContentView()
            } else {
                AnotherScreens()
            }
            
            CustomTabBAr(selecetedTab: $selectedTab)
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
