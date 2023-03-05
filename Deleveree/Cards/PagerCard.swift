//
//  PagerCard.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct PagerCard: View {
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
                .frame(width: 160, height: 180)
            VStack {
                Image(image)
                    .offset(y: -25)
                    .shadow(color: .black,radius: 3, x: -3, y: 5)
                HStack {
                    Text(name)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .offset(y: -50)
                        .font(.system(size: 16, weight: .bold))
                    Spacer()
                }.frame(width: 160)
                Text("\(desc)\nDelevery: FREE · Minimum: $\(cost)")
                    .multilineTextAlignment(.leading)
                    .offset(y: -50)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 8))
                HStack(spacing: 0){
                    Image(systemName: "star.fill")
                        .font(.system(size: 10))
                    Text(" \(String(format: "%.1f", rating)) · ")
                        .font(.system(size: 12, weight: .bold))
                    Image(systemName: "clock")
                        .font(.system(size: 10))
                    Text(" \(time) Mins")
                        .font(.system(size: 12, weight: .bold))
                }
                .offset(x: 3, y: -40)
            }
            
        }
        .shadow(radius: 2)
    }
}

struct PagerCard_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            PagerCard(image: "paul", name: "Tony Roma's", desc: "Ribs & Steaks", cost: 20, rating: 4.5, time: 35)
        }
        .foregroundColor(Color.black)
    }
}
