//
//  ListItem.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-29.
//

import Foundation

struct ListItem: Identifiable, Codable {
    var id: Int?
    var title: String
    var done:  Bool
}

let firstItem = ListItem(title: "Underwear, (3-5 pairs)", done: false)

let secondItem = ListItem(title: "Socks, (3-5 pairs)", done: true)

let thirdItem = ListItem(title: "Sleepwear, (3-5 pairs)", done: false)

let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
