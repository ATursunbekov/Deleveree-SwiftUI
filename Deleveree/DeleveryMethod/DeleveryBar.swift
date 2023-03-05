//
//  DeleveryBar.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct DeleveryBar: View {
    var arr = [
        DeleveryItem(image: "del"),
        DeleveryItem(image: "take"),
        DeleveryItem(image: "bell"),
        DeleveryItem(image: "park"),
        DeleveryItem(image: "dis"),
        DeleveryItem(image: "dis"),
    ]
    var body: some View {
            GeometryReader { geometry in
                ScrollView(.horizontal) {
                    HStack (spacing: 20) {
                        ForEach(0..<6) {
                            arr[$0]
                        }
                    }.padding()
                }.frame(width: geometry.size.width)
                    
            }.frame(height: 65)
    }
}

struct DeleveryBar_Previews: PreviewProvider {
    static var previews: some View {
        DeleveryBar()
    }
}

struct DeleveryItem: View {
    
    var image: String
    //@Binding var selectedTab: String
    var body: some View{
        Button (action: {}) {
            if image == "del" {
                ZStack {
                    ContainerRelativeShape()
                        .cornerRadius(30)
                        .foregroundColor(Color.black)
                    HStack(spacing: 3){
                        VStack(spacing: 5) {
                            Divider()
                                .frame(height: 2)
                                .frame(width: 15)
                                .overlay(.white)
                            Divider()
                                .frame(height: 2)
                                .frame(width: 15)
                                .overlay(.white)
                                .padding(EdgeInsets(
                                    top: 0, leading: 10, bottom: 0, trailing: 0))
                            Divider()
                                .frame(height: 2)
                                .frame(width: 15)
                                .overlay(.white)
                        }
                        Text("Delivery")
                            .font(.system(size: 10))
                            .foregroundColor(Color.white)
                    }
                }
                .frame(width: 85, height: 47)
                .shadow(color: Color.gray, radius: 3)
            } else if image == "dis" {
                ZStack {
                    ContainerRelativeShape()
                        .cornerRadius(15)
                        .foregroundColor(Color.white)
                    HStack(spacing: 3){
                        ZStack {
                            Image("dis")
                            Text("%")
                                .foregroundColor(Color.white)
                                .font(.system(size: 10))
                        }
                    }
                }
                .frame(width: 50, height: 47)
                .shadow(color: Color.gray, radius: 3)
            } else {
                ZStack {
                    ContainerRelativeShape()
                        .cornerRadius(15)
                        .foregroundColor(Color.white)
                    HStack(spacing: 3){
                        Image(image)
                    }
                }
                .frame(width: 50, height: 47)
                .shadow(color: Color.gray, radius: 3)
            }
        }

    }
}
