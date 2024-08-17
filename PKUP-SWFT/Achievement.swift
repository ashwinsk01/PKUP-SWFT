//
//  Achievement.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/16/24.
//

import Foundation

struct Achievement: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var isUnlocked: Bool
    var imageName: String
}
