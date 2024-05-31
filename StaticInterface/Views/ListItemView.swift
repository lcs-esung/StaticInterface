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
    TabView(selection: .constant(1)){
        
       ListItemView()
                .tabItem {
                    Image(systemName: "tshirt.fill")
                    Text("Clothings")
                  }
                  .tag(1)
        
        Text("Toiletries")
                  .tabItem {
                      Image(systemName: "toilet.fill")
                      Text("Toiletries")
                  }
                  .tag(2)
    
        Text("Health")
                  .tabItem {
                      Image(systemName: "bandage.fill")
                      Text("Health")
                  }
                  .tag(3)
        
        Text("Electronics")
                  .tabItem {
                      Image(systemName: "iphone.gen1")
                      Text("Electronics")
                  }
                  .tag(4)
              
    }
}
