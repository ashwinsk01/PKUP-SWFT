//
//  AchievementView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/16/24.
//

import SwiftUI

import SwiftUI

struct AchievementView: View {
    var achievement: Achievement
    @Binding var selectedAchievement: Achievement?
    
    var body: some View {
        Image(systemName: achievement.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .foregroundColor(achievement.isUnlocked ? .blue : .gray)
            .onTapGesture {
                self.selectedAchievement = achievement
            }
    }
}

// Preview Provider
struct AchievementView_Previews: PreviewProvider {
    @State static var selectedAchievement: Achievement? = nil // Create a static state for preview

    static var previews: some View {
        // Create a sample Achievement for preview purposes
        AchievementView(achievement: Achievement(name: "Sample", description: "This is a sample description.", isUnlocked: false, imageName: "star"), selectedAchievement: $selectedAchievement)
    }
}
