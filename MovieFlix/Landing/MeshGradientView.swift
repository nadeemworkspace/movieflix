//
//  MeshGradientView.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 03/09/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import SwiftUI

struct MeshGradientView: View {
    @State private var isAnimating = false
    
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                [0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
                [0.0, 0.5], [isAnimating ? 0.1 : 0.8, 0.5], [1.0, isAnimating ? 0.5 : 1.0],
                [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]
            ],
            colors: [
                Color(hex: "09090F"), Color(hex: "373E52"), Color(hex: "09090F"),
                isAnimating ? Color(hex: "373E52") : Color(hex: "09090F"),
                Color(hex: "373E52"),
                Color(hex: "373E52"),
                Color(hex: "09090F"), Color(hex: "373E52"), Color(hex: "09090F")
            ]
        )
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeInOut(duration: 3.0).repeatForever(autoreverses: true)) {
                isAnimating.toggle()
            }
        }
    }
}

// MARK: PREVIEW
#Preview {
    MeshGradientView()
}
