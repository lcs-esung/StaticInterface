//
//  MainMenuView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-05-31.
//

import SwiftUI

struct MainMenuView: View {
    
    let gradientColor = Gradient(colors: [.lightBlue, .lightGray])

    var body: some View {
        
        let lightGray = Color(
                   hue: 0/360.0,
                   saturation: 0.0,
                   brightness: 0.93
               )
        
        let gradient2 = LinearGradient(gradient: gradientColor, startPoint: UnitPoint(x: 1, y: 0.5), endPoint: UnitPoint(x: 1, y: 1))
        
        Rectangle()
            .foregroundStyle(gradient2)
            .cornerRadius(6)
            .frame(width: 210,height: 210)
        
    }
    
  
    
}

#Preview {
    MainMenuView()
}
