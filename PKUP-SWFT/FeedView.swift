//
//  FeedView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/15/24.
//

import SwiftUI

struct FeedView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(0..<10, id: \.self) { index in
                        NavigationLink(destination: Text("Post Details for post \(index + 1)")) {
                            Image("placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 200)
                                .clipped()
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Feed")
            .navigationBarItems(leading: Button(action: {
                // Search action
            }) {
                Image(systemName: "magnifyingglass")
            }, trailing: Button(action: {
                // Direct message action
            }) {
                Image(systemName: "envelope")
            })
        }
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            EnhancementView()
                .tabItem {
                    Image(systemName: "wand.and.stars")
                    Text("Enhance")
                }
            UploadView()
                .tabItem {
                    Image(systemName: "camera.fill")
                    Text("Upload")
                }
            AchievementsPageView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Achievements")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}


