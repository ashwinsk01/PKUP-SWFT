//
//  ContentView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pink.edgesIgnoringSafeArea(.all) // Background color for all platforms

                VStack {
                    Spacer()
                    Image("logoCutout") // Ensure this is the correct logo file name
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity) // This will maintain the logo within the view's constr aints

                    Spacer()

                    NavigationLink(destination: AuthenticationView()) {
                        Image("playButtonImageWhite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 190, height: 190)
                    }
                    Spacer()
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
