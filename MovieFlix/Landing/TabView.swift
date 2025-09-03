//
//  TabView.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 03/09/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import SwiftUI

struct TabView: View {
    
    @Binding var currentTab: Tab
    @Namespace var animation
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                VStack(spacing: -2) {
                    Image(tab.rawValue)
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .foregroundStyle(currentTab == tab ? .white : .gray.opacity(0.6))
                    
                    if tab == currentTab {
                        Circle()
                            .fill(.white)
                            .frame(width: 5, height: 5)
                            .offset(y: 10)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.spring) {
                        currentTab = tab
                    }
                }
            }
        }
    }
}

#Preview {
    TabView(currentTab: .constant(.home))
}
