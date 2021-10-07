//
//  AppTabBarView.swift
//  NavigationExtensions
//
//  Created by Alexander on 06.10.21. (nachgebaut)
/*
 Der erste Screen beim Start!

 benötigt:
 - Generics
 - ViewBuilder
 - PreferenceKey
 - MatchedGeometryEffect

 https://www.youtube.com/watch?v=FxW9Dxt896U&t=19s
 */
//

import SwiftUI

struct AppTabBarView: View {

    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
/*
 MARK: View Builder
 */
    var body: some View {

        CustomTabBarContainerView(selection: $tabSelection) {

            Color.blue
                .tabBarItem(tab: .home, selection: $tabSelection)
            Color.red
                .tabBarItem(tab: .favorites, selection: $tabSelection)

            Color.green
                .tabBarItem(tab: .profile, selection: $tabSelection)
            Color.orange
                .tabBarItem(tab: .messages, selection: $tabSelection) // messages = Erweiterung auf 4 items


        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")

                }
            Color.blue
                .tabItem{
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            Color.orange
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}
