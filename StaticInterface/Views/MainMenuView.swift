//
//  MainMenuView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-31.
//

import SwiftUI

struct MainMenuView: View {
    
    let gradientColor = Gradient(colors: [.lightBlue, .lightGrey])

    var body: some View {
        
        let lightGrey = Color(
                   hue: 0/360.0,
                   saturation: 0.0,
                   brightness: 0.93
               )
        
        let gradient2 = LinearGradient(gradient: gradientColor, startPoint: UnitPoint(x: 1, y: 0.5), endPoint: UnitPoint(x: 1, y: 1))
        
        ZStack{
            
            Rectangle()
                .foregroundStyle(gradient2)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                    .padding()
                
                TitleView()
                
                HStack {
                    Image("longShirt")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.darkBlue)
                        .frame(height: 150)
                        .padding(.leading, 30)
                    
                    Spacer()
                
                }
                
                HStack {
                    Image("toothbrush")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.darkBlue)
                        .frame(height: 120)
                        .padding(.leading, 100)
                }
                
                HStack {
                    Image("pants")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.darkBlue)
                        .frame(height: 150)
                        .padding(.leading, 30)
            
               
                    
                    Spacer()
                    
                       
                }
               
                Spacer()
                    .padding()
              
                
                ZStack {
                    Rectangle()
                        .foregroundStyle(.darkBlue)
                        .frame(width: 150)
                        .cornerRadius(120)
                    
                    Text("Get Started")
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
                    .padding()
                
            }
                
            
            
            }
        }
       
    
  
    
}

#Preview {
    MainMenuView()
}
