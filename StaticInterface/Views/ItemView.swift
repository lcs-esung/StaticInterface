//
//  ItemView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-30.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: ListItem
    
    var body: some View {
       
        Label(
            title: {
                TextField("", text: $currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ?
                    "checkmark.circle" : "circle")
                .onTapGesture {
                    currentItem.done.toggle()
                }
            }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
    }
}
