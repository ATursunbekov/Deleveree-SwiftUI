//
//  SplashScreenView.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 3/3/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            Home()
        } else {
            VStack {
                ZStack {
                    Image("splash_image")
                        .resizable()
                        .ignoresSafeArea()
                    VStack {
                        HStack {
                            VStack {
                                Divider()
                                    .frame(height: 4)
                                    .frame(width: 30)
                                    .overlay(.white)
                                Divider()
                                    .frame(height: 4)
                                    .frame(width: 30)
                                    .overlay(.white)
                                    .padding(EdgeInsets(
                                        top: 0, leading: 30, bottom: 0, trailing: 0))
                                Divider()
                                    .frame(height: 4)
                                    .frame(width: 30)
                                    .overlay(.white)
                            }
                            Text("DELEVEREE")
                                .font(.system(size: 40,
                                              weight: .heavy))
                                .foregroundColor(.white)
                        }
                        //                    .padding(.horizontal, 24)
                        Spacer()
                            .frame(height: 20)
                        Text("Your favourite local restaurants").font(.system(size: 20, weight: .light))
                            .foregroundColor(.white)
                        Text("delivered ").bold().foregroundColor(.white)
                            .font(.system(size: 20))
                        + Text("to your doorstep.")
                            .foregroundColor(.white)
                            .font(.system(size: 20,
                                          weight: .light))
                    }
                    .padding(.horizontal, 24)
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
    
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
