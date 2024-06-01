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
        
        let lightGray = Color(
                   hue: 0/360.0,
                   saturation: 0.0,
                   brightness: 0.93
               )
        
        let gradient2 = LinearGradient(gradient: gradientColor, startPoint: UnitPoint(x: 1, y: 0.5), endPoint: UnitPoint(x: 1, y: 1))
        
        VStack {
            
            Image(systemName: "tshirt.fill")
                .foregroundColor(.white)
            
            Image(systemName: "tshirt.fill")
                .foregroundColor(.white)
            
            Image(systemName: "tshirt.fill")
                .foregroundColor(.white)
             
            Rectangle()
                .cornerRadius(6)
            
    
        }
        
    }
    
  
    
}

#Preview {
    MainMenuView()
}
