//
//  ChoicesView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-03.
//

import SwiftUI

struct ChoicesView: View {
    
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
            
            VStack{
                
                TitleView()
                
                QuestionView(question: "Are you heading out of your country or travelling inside your country?")
                    .padding()
                
                HStack{
                    ChoiceButtonView(title: "In the Country", picture: Image(systemName: "flag.fill"))
                    
                    ChoiceButtonView(title: "Outside the Country", picture: Image(systemName: "airplane.departure"))
                    
                }
            }
            
        }
        
    }
}

#Preview {
    ChoicesView()
}
