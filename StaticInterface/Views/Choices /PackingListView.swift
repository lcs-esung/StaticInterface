//
//  PackingListView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-09.
//

import SwiftUI

struct PackingListView: View {
    
    @State var newItemDescription = ""
    
    @State var searchText = ""
    
    @State private var packingList: [ListItem] = exampleItems
    
    @State var presentingNewItemSheet = true
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                List($packingList) { $packingItem in
                    ItemView(currentItem: $packingItem)
                        .swipeActions{
                            Button("Delete",
                                   role: .destructive,
                                   action: {
                                        delete(packingItem)
                            }
                        )
                    }
                }
            }
            
            .searchable(text: $searchText)
            .navigationTitle("Packing List")
            .sheet(isPresented: $presentingNewItemSheet) {
                Text("Hello")
            }
            .presentationDetents([.medium, .fraction(0.15)])
            
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { presentingNewItemSheet = true
                    }) {
                        Text("Edit")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        createPackItem(withTitle: newItemDescription)
                    }) {
                        Image(systemName: "plus")
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "arrow.left")
                        Text("Back")
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
    
    func delete(_ packingItem: ListItem) {
        
        packingList.removeAll { currentItem in
            currentItem.id == packingItem.id
        }
    }
}









#Preview {
    PackingListView()
}
  
