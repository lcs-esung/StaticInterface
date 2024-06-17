//
//  PackingListView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-09.
//

import SwiftUI

struct PackingListView: View {
    
    @State var newItemDescription = ""
    
    @State private var searchText: String = ""
    
    @State private var packingList: [ListItem] = exampleItems
    
    
    var body: some View {
        
        NavigationView{
            
            List{
                ForEach($packingList) { $packingItem in
                    ItemView(currentItem: $packingItem)
                }
                .onDelete(perform: delete)
            }
            .toolbar{
                EditButton()
            }
            .searchable(text: $searchText)
            .navigationTitle("Packing List")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        createPackItem(withTitle: newItemDescription)
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    func createPackItem(withTitle title: String) {
        
        let packingItem = ListItem(
            title: title,
            done: false
        )
        
        packingList.append(packingItem)
        
    }
    
    //    func delete(_ packingItem: ListItem) {
    //
    //        packingList.removeAll { currentItem in
    //            currentItem.id == packingItem.id
    //        }
    //    }
    
    
    // MARK: Functions
    func delete(at offsets: IndexSet) {
        packingList.remove(atOffsets: offsets)
    }
    
    func filter(items: [ListItem], on providedText: String) -> [ListItem] {
        
        //if the provided text is empty, just return the original array
        if providedText.isEmpty {
            return items
        } else {
            
            // Make an empty array of items
            var filteredPackingList: [ListItem] = []
            
            // Iterate over existing reviews
            for item in items {
                if item.title.contains(providedText) {
                    filteredPackingList.append(item)
                }
            }
            
            return filteredPackingList
        }
    }
}


#Preview {
    PackingListView()
}

