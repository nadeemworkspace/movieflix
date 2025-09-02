//
//  LoginHomeViewModel.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 02/09/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import Foundation

final class LoginHomeViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var moveToLanding: Bool = false
    @Published var moveToSignUp: Bool = false
    @Published var forgotPassword: Bool = false
    
}
