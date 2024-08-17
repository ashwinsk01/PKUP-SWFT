//
//  AchievementDetailsView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/16/24.
//

import SwiftUI

struct AchievementDetailsView: View {
    var achievement: Achievement
    
    var body: some View {
        VStack {
            Text(achievement.name)
                .font(.title)
            Text(achievement.description)
                .font(.body)
        }
        .padding()
    }
}

// Preview Provider
struct AchievementDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a sample Achievement for preview purposes
        AchievementDetailsView(achievement: Achievement(name: "Achiever", description: "You've achieved something great!", isUnlocked: true, imageName: "medal.fill"))
    }
}
