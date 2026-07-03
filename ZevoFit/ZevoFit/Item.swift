//
//  Item.swift
//  ZevoFit
//
//  Created by Yug  on 7/3/26.
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
