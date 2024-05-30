//
//  ListItemView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-30.
//

import SwiftUI

struct ListItemView: View {
    
    @State var newItemDescription = ""
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                List{
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter new item", text:
                                $newItemDescription)
                    
                    Button("ADD") {
                        
                    }
                    .font(.caption)
                }
                .padding(20)
                .navigationTitle("Daily Needs")
            }
        }
    }
}

#Preview {
    ListItemView()
}
