//
//  TopBar.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct TopBar: View {
    @Binding var showUp: Bool
    @Binding var count: Int
    var body: some View {
        HStack {
            VStack(spacing: 5) {
                Divider()
                    .frame(height: 3)
                    .frame(width: 25)
                    .overlay(.black)
                Divider()
                    .frame(height: 3)
                    .frame(width: 15)
                    .overlay(.black)
                    .frame(maxWidth: 25,alignment: .leading)
            }
            Spacer()
            VStack{
                Text("Delivering to")
                    .font(.system(size: 10))
                    .foregroundColor(Color.gray)
                Button(action: {
                    showUp = true
                }) {
                    HStack{
                        Text("Manas Ave")
                            .foregroundColor(Color.black)
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.black)
                    }
                }
            }
            Spacer()
            Button(action: {
            }) {
                ZStack{
                    Rectangle()
                        .frame(width: 45, height: 47)
                        .cornerRadius(15)
                        .foregroundColor(Color.black)
                    VStack(spacing: 0) {
                        Text("\(count)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10))
                        Image(systemName: "cart")
                            .foregroundColor(Color.white)
                        
                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(showUp: .constant(false), count: .constant(0))
    }
}
