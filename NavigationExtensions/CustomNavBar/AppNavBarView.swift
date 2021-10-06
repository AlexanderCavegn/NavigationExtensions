//
//  AppNavBarView.swift
//  NavigationExtensions
//
//  Created by Alexander on 06.10.21. (Nachbau)
/*
 - ViewBuilders
 - PreferenceViews
 */

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()

                CustomNavLink(destination:
                                Text("Destination")
                                .customNavigationTitle("Second Screen")
                                .customNavigationSubtitle("Subtitle should be showing!")

                ) {
                    Text("Navigate")
                }
            }
            .customNavBarItems(title: "New title!", subtitle: "Subtitle!", backButtonHidden: true)
//            .customNavigationTitle("Custom Title")
//            .CustomNavBarBackButtonHidden(true) (zusammengefasst oben)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView {
            ZStack {

                Color.green.ignoresSafeArea()

                NavigationLink(
                    destination: Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                    ,
                    label: {
                        Text("Navigate")

                    })
            } // ZStack
            .navigationTitle("Nav Title here")
        } // NavigationView
    }
}
