//
//  CustomSearch.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct CustomSearch: View {
    @State var input: String = ""
    var body: some View {
            ZStack {
                Rectangle()
                    .cornerRadius(15)
                    .foregroundColor(Color.white)
                    .shadow(radius: 3, x: -1,y: 2)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 25))
                    TextField("Find resturant by name", text: $input)
                        .foregroundColor(Color.black)
                }
                .padding(.horizontal)
            }
            .frame(width: 277, height: 55)
        }
}

struct CustomSearch_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearch()
    }
}
