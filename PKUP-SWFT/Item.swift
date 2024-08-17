//
//  Item.swift
//  PKUP-SWFT
//
//  Created by Ashwin SK on 17/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
