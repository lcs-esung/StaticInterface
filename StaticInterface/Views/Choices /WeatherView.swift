//
//  WeatherView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-04.
//

import SwiftUI

struct WeatherView: View {
    
    let gradientColor = Gradient(colors: [.lightBlue, .lightGrey])

    var body: some View {
        
        let lightGray = Color(
                   hue: 0/360.0,
                   saturation: 0.0,
                   brightness: 0.93
               )
        
        let gradient2 = LinearGradient(gradient: gradientColor, startPoint: UnitPoint(x: 1, y: 0.5), endPoint: UnitPoint(x: 1, y: 1))
        
        ZStack{
            
            Rectangle()
                .foregroundStyle(gradient2)
                .ignoresSafeArea()
            
            
            
        }
        
    }
}

#Preview {
    WeatherView()
}
