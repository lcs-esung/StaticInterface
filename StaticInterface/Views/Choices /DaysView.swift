//
//  DaysView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-09.
//

import SwiftUI

struct DaysView: View {
    
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
            
            VStack{
                
                TitleView()
                    .padding(.bottom, 80)
                
                QuestionView(question: "How many days are you going to be staying?")
                
                TextBoxView(textFieldAnswer: "Enter answer here")
                
                HStack {
                    
                    Button {
                        ""
                    } label: {
                        Text("Cancel")
                    }
                    .buttonStyle(.bordered)
                    .padding(.trailing, 60)
                    
                    NavigationLink {
                        DateView()
                    }
                label: {
                    Text("Done")
                }
                .buttonStyle(.bordered)
                    
                }
            }
        }
    }
}


#Preview {
    DaysView()
}
