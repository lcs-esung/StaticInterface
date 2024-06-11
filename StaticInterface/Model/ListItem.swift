//
//  ListItem.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-29.
//

import Foundation

struct ListItem: Identifiable {
    let id = UUID()
    var title: String
    var done:  Bool
}

let firstItem = ListItem (title: "Underwear, (3-5 pairs)", done: false)

let secondItem = ListItem (title: "Socks, (3-5 pairs)", done: true)
 
let thirdItem = ListItem (title: "Sleepwear, (3-5 pairs)", done: false)

// Example data
let exampleItems = [
    
    firstItem,
    secondItem,
    thirdItem,
    
]
