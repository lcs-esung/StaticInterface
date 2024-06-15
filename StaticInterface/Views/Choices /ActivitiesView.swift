//
//  ActivitiesView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-09.
//

import SwiftUI

struct ActivitiesView: View {
    
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
                
                BackView()
                
                Spacer()
                
                TitleView()
                    .padding(.bottom, 80)
                
                QuestionView(question: "What activities will you be doing? (List all)")
                
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
                        PackingListPreView()
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
    ActivitiesView()
}
