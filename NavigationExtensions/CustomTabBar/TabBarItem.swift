//
//  TabBarItem.swift
//  NavigationExtensions
//
//  Created by Alexander on 07.10.21.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}

enum TabBarItem: Hashable {

    case home, favorites, profile, messages // messages = Erweiterung auf 4 items

    var iconName: String {
        switch self {
            case .home: return "house"
            case .favorites: return "heart"
            case .profile: return "person"
            case .messages: return "message" // messages = Erweiterung auf 4 items

        }
    }

    var title: String {
        switch self {
            case .home: return "Home"
            case .favorites: return "Favorites"
            case .profile: return "Profile"
            case .messages: return "Messages" // messages = Erweiterung auf 4 items

        }
    }

    var color: Color {
                switch self {
                    case .home: return Color.red
                    case .favorites: return Color.blue
                    case .profile: return Color.green
                    case .messages: return Color.orange // messages = Erweiterung auf 4 items

                }
            }
    }



