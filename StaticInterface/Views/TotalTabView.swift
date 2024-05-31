//
//  TotalTabView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-31.
//

import SwiftUI

struct TotalTabView: View {
    var body: some View {
        
        TabView{
            
           ClothingsView()
                    .tabItem {
                        Label("Clothings", systemImage: "tshirt.fill")

                      }
                      .tag(1)
            
            Text("Toiletries")
                      .tabItem {
                          Label("Toiletries", systemImage: "toilet.fill")
                      }
                      .tag(2)
        
            Text("Health")
                      .tabItem {
                          Label("Health", systemImage: "bandage.fill")
                      }
                      .tag(3)
            
            Text("Electronics")
                      .tabItem {
                          Label("Electronics", systemImage: "iphone.gen1")
                      }
                      .tag(4)
                  
        }
    }
}

#Preview {
    TotalTabView()
}
