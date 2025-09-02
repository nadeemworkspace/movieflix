//
//  CustomTextField.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 31/08/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    let title: String
    let keyboard: UIKeyboardType
    
    init(text: Binding<String>, title: String, keyboard: UIKeyboardType = .asciiCapable) {
        self._text = text
        self.title = title
        self.keyboard = keyboard
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.poppins(.medium, size: 12))
                .foregroundColor(.gray)
            
            TextField("", text: $text)
                .keyboardType(keyboard)
                .font(.poppins(.regular, size: 14))
                .tint(.black)
                .foregroundStyle(.black)
                .padding(.horizontal, 10)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
        }
    }
}


// MARK: PREVIEW
struct CustomTextField_Preview: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 16) {
            CustomTextField(text: .constant(""), title: "Email")
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .background(.white)
    }
}
