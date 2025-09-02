//
//  AppFont.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 30/08/25.
//

import SwiftUI

enum AppFont: String {
    case black      = "Poppins-Black"
    case bold       = "Poppins-Bold"
    case extraLight = "Poppins-ExtraLight"
    case medium     = "Poppins-Medium"
    case semiBold   = "Poppins-SemiBold"
    case thin       = "Poppins-Thin"
    case regular    = "Poppins-Regular"
    case light      = "Poppins-Light"
}

extension Font {
    static func poppins(_ type: AppFont, size: CGFloat) -> Font {
        return .custom(type.rawValue, size: size)
    }
}
