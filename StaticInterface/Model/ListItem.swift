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

let firstTItem = ListItem (title: "Toothbrush & Toothpaste", done: false)

let secondTItem = ListItem (title: "Shampoo & Conditioner", done: true)
 
let thirdTItem = ListItem (title: "Body Wash", done: false)

let firstHItem = ListItem (title: "Personal Medicine", done: false)

let secondHItem = ListItem (title: "Pain Reliever", done: false)
 
let thirdHItem = ListItem (title: "Hand Sanitiser", done: false)

let firstEItem = ListItem (title: "Charger", done: false)

let secondEItem = ListItem (title: "Power Bank", done: false)
 
let thirdEItem = ListItem (title: "Headphones/Earbuds", done: false)



let exampleItems = [
    
    firstCItem
    ,
    secondCItem
    ,
    thirdCItem
    ,
    
]
