//
//  MainView.swift
//  Deleveree
//
//  Created by Alikhan Tursunbekov on 5/3/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("", systemImage: "house")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
