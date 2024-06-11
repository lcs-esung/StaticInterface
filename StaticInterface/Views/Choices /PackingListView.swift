//
//  PackingListView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-09.
//

import SwiftUI

struct PackingListView: View {
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                List{
                    ItemView(currentItem: firstCItem)
                    ItemView(currentItem: secondCItem)
                    ItemView(currentItem: thirdCItem)
                }
                .searchable(text: $searchText)
                .navigationTitle("Packing List")
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {}) {
                            Image(systemName: "plus")
                            Text("Edit")
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
    }
}


#Preview {
    PackingListView()
}
