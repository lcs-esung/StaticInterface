//
//  ItemView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-30.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: ListItem
    
    var body: some View {
       
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ?
                    "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
        ItemView(currentItem: thirdItem)
    }
}
