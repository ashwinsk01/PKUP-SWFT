//
//  AuthenticationView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/15/24.
//

import SwiftUI

struct AuthenticationView: View {
    @State private var email = ""

    // Define common style settings
    private var logoHeight: CGFloat {
        #if os(iOS)
        return 190
        #else
        return 250
        #endif
    }

    private var horizontalPadding: CGFloat {
        #if os(iOS)
        return 20
        #else
        return 50
        #endif
    }

    private var buttonHeight: CGFloat {
        50
    }

    var body: some View {
        ZStack {
            Color.pink.edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Image("logoCutout")
                    .resizable()
                    .scaledToFit()
                    .frame(height: logoHeight)
                    .padding(.top, 30)

                Text("Create Account")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)

                TextField("email@domain.com", text: $email)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 12)
                    .background(Color.white)
                    .cornerRadius(5)
                    .frame(height: 50)

                Button("Sign up with email") {
                    // Functionality to be implemented
                }
                .padding()
                .frame(height: buttonHeight)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

                Rectangle()
                    .frame(height: 2)
                    .background(Color.black)
                    .padding(.vertical, 20)

                googleButton
                appleButton

                Spacer()

                Text("By clicking continue, you agree to our Terms of Service and Privacy Policy.")
                    .font(.callout)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10)
            }
            .padding(.horizontal, horizontalPadding)
        }
    }

    var googleButton: some View {
        Button(action: {
            // Functionality to be implemented
        }) {
            HStack {
                Image("google_G_Icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                Text("Continue with Google")
                    .foregroundColor(Color.black)
            }
            .frame(maxWidth: 200, maxHeight: buttonHeight) // Applying max height
        }
        .padding()
        .frame(height: buttonHeight)
        .background(Color.white)
        .cornerRadius(10)
    }

    var appleButton: some View {
        Button(action: {
            // Functionality to be implemented
        }) {
            HStack {
                Image(systemName: "applelogo")
                    .resizable()
                    .foregroundColor(Color.white)
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                Text("Continue with Apple")
                    .foregroundColor(.white)
            }
            .frame(maxWidth: 200, maxHeight: buttonHeight) // Applying max height
        }
        .padding()
        .frame(height: buttonHeight)
        .background(Color.black)
        .cornerRadius(10)
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}















