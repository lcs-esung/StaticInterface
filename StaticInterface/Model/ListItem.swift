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

let firstCItem = ListItem (title: "Underwear, (3-5 pairs)", done: false)

let secondCItem = ListItem (title: "Socks, (3-5 pairs)", done: true)
 
let thirdCItem = ListItem (title: "Sleepwear, (3-5 pairs)", done: false)

let exampleItems = [
    
    firstCItem
    ,
    secondCItem
    ,
    thirdCItem
    ,
    
]
