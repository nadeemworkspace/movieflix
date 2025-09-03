//
//  Enums.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 02/09/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import Foundation

enum UserDefaultsKeys: String, CaseIterable {
    case isLoggedIn
    case email
    case userName
    
    static func reset() {
        for i in Self.allCases {
            UserDefaults.standard.removeObject(forKey: i.rawValue)
        }
    }
}

// Tab
enum Tab: String, CaseIterable {
    case home
    case player
    case search
    case profile
}
