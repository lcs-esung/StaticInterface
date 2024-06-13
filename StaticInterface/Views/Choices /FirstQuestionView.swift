//
//  FirstQuestionView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-07.
//

import SwiftUI

struct FirstQuestionView: View {
    
    let gradientColor = Gradient(colors: [.lightBlue, .lightGrey])
    
    var body: some View {
        
        let lightGrey = Color(
            hue: 0/360.0,
            saturation: 0.0,
            brightness: 0.93
        )
        
        let gradient2 = LinearGradient(gradient: gradientColor, startPoint: UnitPoint(x: 1, y: 0.5), endPoint: UnitPoint(x: 1, y: 1))
        
        NavigationStack{
            
            ZStack{
                
                Rectangle()
                    .foregroundStyle(gradient2)
                    .ignoresSafeArea()
                
                VStack{
                    
                    
                    TitleView()
                        .padding(.bottom, 80)
                    
                    QuestionView(question: "Where are you going from?")
                    
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
                            SecondQuestionView()
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
}

#Preview {
    FirstQuestionView()
}
