//
//  ContentView.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 3/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State var showModel = false
    @State var count = 1
    var body: some View {
        ZStack {
            Color(red: 244/255, green: 244/255, blue: 244/255)
                .ignoresSafeArea()
            VStack {
                TopBar(showUp: $showModel, count: $count)
                DeleveryBar()
                Spacer()
                ZStack {
                    ContainerRelativeShape()
                        .frame(height: 25)
                        .foregroundColor(Color(red: 244/255, green: 244/255, blue: 244/255))
                    Text("56 stores open")
                        .font(.system(size: 16, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 15))
                }
                HStack {
                    CustomSearch()
                    Image("edit")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Button(action: { count += 1}) {
                        PagerCard(image: "paul", name: "Tony Roma's", desc: "Ribs & Steaks", cost: 20, rating: 4.5, time: 35)
                    }
                    .foregroundColor(Color.black)
                    Button(action: {count += 1}) {
                        PagerCard(image: "tokpok", name: "Momos", desc: "Japanese", cost: 10, rating: 4.5, time: 40)
                    }
                    .foregroundColor(Color.black)
                }
                Button(action: {count += 1}) {
                    LongCard(image: "tony", name: "Paul", desc: "French Pasta", cost: 0, rating: 4.5, time: 25)
                        .offset(x: -20)
                }
                .foregroundColor(Color.black)
                Spacer()
                    .frame(height: 90)
            }
            DeleveryLocation(isShiwing: $showModel)
        }
        .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
