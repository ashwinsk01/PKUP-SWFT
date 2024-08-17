//
//  ProfileView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/15/24.
//

import SwiftUI

struct ProfileView: View {
    // Dummy data for demonstration purposes
    var profileImage: String = "profile-placeholder"
    var followersCount: Int = 150
    var followingCount: Int = 75
    var ascensionScore: Int = 1200
    var bioText: String = "Just a coder living the dream. 🚀👨‍💻"

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                // Profile Picture
                Image(profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .shadow(radius: 10)

                // Followers, Following, Ascension Score
                HStack {
                    VStack {
                        Text("\(followersCount)")
                            .font(.headline)
                        Text("Followers")
                            .font(.subheadline)
                    }
                    VStack {
                        Text("\(followingCount)")
                            .font(.headline)
                        Text("Following")
                            .font(.subheadline)
                    }
                    VStack {
                        Text("\(ascensionScore)")
                            .font(.headline)
                        Text("Ascension Score")
                            .font(.subheadline)
                    }
                }
                
                // Bio Section
                Text(bioText)
                    .multilineTextAlignment(.center)
                    .padding()

                // Post Feed
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(0..<10, id: \.self) { index in
                        Image("post-placeholder")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(10)
                    }
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
