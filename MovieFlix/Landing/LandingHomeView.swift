//
//  LandingHomeView.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 02/09/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import SwiftUI

struct LandingHomeView: View {
    
    @State private var searchText: String = ""
    @State private var tab: Tab = .home
    
    var body: some View {
        ZStack {
            // Background
            MeshGradientView()
                .ignoresSafeArea()
            VStack {
                // Scroll View
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 0) {
                        // Header
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Hello Nadeem")
                                    .font(.poppins(.semiBold, size: 24))
                                Text("Check for latest additions")
                                    .font(.poppins(.medium, size: 14))
                                    .foregroundStyle(.white.opacity(0.8))
                            }
                            Spacer()
                            Image(.facebook)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        .padding()
                        .padding(.bottom)
                        // Search Bar
                        VStack {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, 10)
                                TextField("Search", text: $searchText)
                                    .font(.poppins(.semiBold, size: 20))
                                Spacer()
                                Image("mic")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                            }
                            .padding()
                            .background(.white.opacity(0.12))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        .padding(.vertical)
                        .padding(.horizontal, 25)

                        // Featured
                        Text("Features Series")
                            .font(.poppins(.semiBold, size: 20))
                            .padding()
                    }
                }
                .scrollIndicators(.hidden)
                
                TabView(currentTab: $tab)
                    .padding()
            }
        }
    }
}

// MARK: PREVIEW
#Preview {
    LandingHomeView()
}
