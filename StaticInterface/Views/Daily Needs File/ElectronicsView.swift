//
//  ElectronicsView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-31.
//

import SwiftUI

struct ElectronicsView: View {
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                List{
                    ItemView(currentItem: firstEItem)
                    ItemView(currentItem: secondEItem)
                    ItemView(currentItem: thirdEItem)
                }
                .searchable(text: $searchText)
                .navigationTitle("Daily Needs")
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
    ElectronicsView()
}
