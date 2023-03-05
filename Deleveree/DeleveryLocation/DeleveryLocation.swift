//
//  DeleveryLocation.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct DeleveryLocation: View {
    
    @Binding var isShiwing : Bool
    
    var body: some View {
        if isShiwing {
            ZStack(alignment: .top){
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShiwing = false
                    }
                mainView
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .cornerRadius(15)
            .ignoresSafeArea()
        }
    }
    var mainView: some View {
        VStack {
            Text("Choose delivery location")
                .font(.system(size: 18, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            ChooseLocation(image: "mappin", label: "Deliver to current location", des: "Manas ave")
            ChooseLocation(image: "pin", label: "Deliver to different location", des: "Choose location on the map")
            Text("Saved Addreses")
                .font(.system(size: 18, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            SavedLocation(image: "home", label: "Home", des: "Jukeev-Pudovkin St 43, apt #12")
            Divider()
                .frame(height: 1)
                .overlay(Color.gray)
                .padding()
            SavedLocation(image: "work", label: "Work", des: "Manas Ave 32, floor 7, office #703")
            Divider()
                .frame(height: 1)
                .overlay(Color.gray)
                .padding()
            SavedLocation(image: "hotel", label: "Hotel", des: "Frunze St 50, floor 10, room #1011")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 650)
        .background(Color.white)
        .cornerRadius(30)
    }
}

struct DeleveryLocation_Previews: PreviewProvider {
    static var previews: some View {
        DeleveryLocation(isShiwing: .constant(true))
//        ContentView()
//        ChooseLocation()
    }
}

struct ChooseLocation: View {
    var image: String
    var label: String
    var des: String
    var body: some View {
        Button(action: {}) {
            
            VStack {
                HStack {
                    Image(image)
                    VStack{
                        Text(label)
                            .foregroundColor(Color.black)
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(des)
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }.padding()
                Divider()
                    .frame(height: 1)
                    .overlay(Color.gray)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct SavedLocation: View {
    var image: String
    var label: String
    var des: String
    var body: some View {
        Button(action: {}) {
            
            HStack {
                if image == "home" {
                    Image(systemName: "house")
                        .foregroundColor(Color.black)
                } else {
                    Image(image)
                }
                VStack{
                    Text(label)
                        .foregroundColor(Color.black)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(des)
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color.black)
            }.padding()
        }
    }
}
