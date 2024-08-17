//
//  AchievementsPageView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/16/24.
//

import SwiftUI

struct AchievementsPageView: View {
    let achievements: [Achievement] = [
        Achievement(name: "Rookie", description: "Complete the tutorial.", isUnlocked: true, imageName: "medal.fill"),
        Achievement(name: "Veteran", description: "Play 100 games.", isUnlocked: false, imageName: "medal.fill")
    ]
    
    @State private var selectedAchievement: Achievement?
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                ForEach(achievements) { achievement in
                    AchievementView(achievement: achievement, selectedAchievement: $selectedAchievement)
                }
            }
            .padding()
        }
        .sheet(item: $selectedAchievement) { achievement in
            AchievementDetailsView(achievement: achievement)
        }
    }
}

#Preview {
    AchievementsPageView()
}
