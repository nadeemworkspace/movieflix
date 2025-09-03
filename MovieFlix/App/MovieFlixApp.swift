//
//  MovieFlixApp.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 30/08/25.
//

import SwiftUI
//import FirebaseCore

//class AppDelegate: NSObject, UIApplicationDelegate {
//    
//  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//    return true
//  }
//    
//}

@main
struct MovieFlixApp: App {
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @AppStorage(UserDefaultsKeys.isLoggedIn.rawValue) var isLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if isLoggedIn {
                    LandingHomeView()
                } else {
                    LandingHomeView()
                }
            }
        }
    }
}
