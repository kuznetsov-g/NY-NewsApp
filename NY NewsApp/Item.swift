//
//  Item.swift
//  NY NewsApp
//
//  Created by Георгий Кузнецов on 4/12/24.
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
