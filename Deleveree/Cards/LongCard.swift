//
//  LongCard.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct LongCard: View {
    var image: String
    var name: String
    var desc:String
    var cost: Int
    var rating: Double
    var time: Int
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(30)
                .foregroundColor(Color.white)
                .frame(width: 285, height: 130)
            VStack(spacing: 0) {
                HStack {
                    VStack {
                        Text(name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 16, weight: .bold))
                        Text("\(desc)\nDelevery: FREE · Minimum: $\(cost)")
                            .frame(width: 224)
                            .padding(EdgeInsets(top: 0, leading: 70, bottom: 0, trailing: 0))
                            .foregroundColor(Color.gray)
                            .font(.system(size: 12))
                    }.frame(width: 123)
                    Image(image)
                        .offset(x: 70, y: 15)
                        .shadow(color: .black,radius: 3, x: -3, y: 5)
                }
                HStack(spacing: 0){
                    Image(systemName: "star.fill")
                        .font(.system(size: 10))
                    Text(" \(String(format: "%.1f", rating)) · ")
                        .font(.system(size: 12, weight: .bold))
                    Image(systemName: "clock")
                        .font(.system(size: 10))
                    Text(" \(time) Mins")
                        .font(.system(size: 12, weight: .bold))
                }.offset(x: 0, y: -25)
            }
            
        }.frame(width: 285, height: 130)
        .shadow(radius: 2)
    }
}

struct LongCard_Previews: PreviewProvider {
    static var previews: some View {
        LongCard(image: "tony", name: "Paul", desc: "French Pasta", cost: 0, rating: 4.5, time: 25)
    }
}
