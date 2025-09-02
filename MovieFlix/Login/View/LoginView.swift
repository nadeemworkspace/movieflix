//
//  LoginView.swift
//  MovieFlix
//
//  Created by Muhammed Nadeem on 30/08/25.
//  Copyright © 2025 genysis.inc. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            // Header
            headerView
            // Login
            loginBodyView
        }
    }
    
}

// MARK: SUBVIEW
extension LoginView {
    
    @ViewBuilder
    private var headerView: some View {
        VStack(alignment: .leading) {
            Image(.logofont)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 20)
                .padding(.bottom, 10)
            VStack(alignment: .leading, spacing: 5) {
                Text("Sign in to your\nAccount")
                    .font(.poppins(.semiBold, size: 35))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.white)
                
                HStack(alignment: .center, spacing: 6) {
                    Text("Don't have an account?")
                        .foregroundStyle(.white)
                        .font(.poppins(.medium, size: 12))
                    
                    Button {
                        print("Sign up clicked")
                    } label: {
                        Text("Sign Up")
                            .font(.poppins(.medium, size: 12))
                            .foregroundStyle(.blue)
                            .underline()
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            Image(.loginhead)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .top)
            
        )
    }
    
    // Login View body
    @ViewBuilder
    private var loginBodyView: some View {
        VStack {
            VStack(spacing: 16) {
                // Email
                CustomTextField(text: $email, title: "Email", keyboard: .emailAddress)
                // Password
                CustomTextField(text: $password, title: "Password", keyboard: .asciiCapable)
                // Remember Me / Forgot Password
                HStack(alignment: .center) {
                    Button {
                        print("Remember me Clicked")
                    } label: {
                        HStack(alignment: .center, spacing: 5) {
                            Image(.checkbox)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 19, height: 19)
                            Text("Remember me")
                                .foregroundStyle(.gray)
                                .font(.poppins(.semiBold, size: 12))
                        }
                    }
                    Spacer()
                    Button {
                        print("Forgot password Clicked")
                    } label: {
                        Text("Forgot password ?")
                            .foregroundStyle(.darkBlue)
                            .font(.poppins(.semiBold, size: 12))
                    }
                }
                
                Button {
                    print("Login clicked")
                } label: {
                    Text("Log In")
                        .font(.poppins(.medium, size: 14))
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.darkBlue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.vertical)
                
                HStack(spacing: 10) {
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(height: 1)
                    Text("Or login with")
                        .font(.poppins(.semiBold, size: 12))
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(height: 1)
                }
                .foregroundStyle(.gray.opacity(0.5))
                // Login with other providers
                HStack(alignment: .center, spacing: 16) {
                    loginProviderButton("Facebook", icon: "facebook") {
                        print("Apple icon clicked")
                    }
                    loginProviderButton("Google", icon: "google") {
                        print("Google icon clicked")
                    }
                }
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                
                Text("By signing up, you agree to the **Terms of Service** and **Data Processing Agreement**")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .font(.poppins(.regular, size: 12))
                    .padding(.top, 20)
            
            }
            .padding(.vertical, 20)
        }
        .padding(.horizontal)
        .background(.white)
    }
    
    @ViewBuilder
    private func loginProviderButton(_ provider: String, icon: String,
                                     action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.red)
                Text(provider)
                    .font(.poppins(.medium, size: 14))
                    .foregroundStyle(.black)
                Spacer()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
        }
    }
    
}

// MARK: PREVIEW
#Preview {
    LoginView()
}
