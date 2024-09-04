//
//  Item.swift
//  com.ugerdem.demo
//
//  Created by Uğur Erdem on 5.09.2024.
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
