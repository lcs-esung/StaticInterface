//
//  PackingListPreView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-09.
//

import SwiftUI

struct PackingListPreView: View {
    
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
                  
                QuestionView(question: "Based on your answers..      This is what you should pack!")
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.slightGrey)
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 170)
                        .cornerRadius(30)
                        
                    
                    VStack {
                        Text("Packing List")
                            .font(Font.custom("Arial-BoldMT", size: 23))
                            .multilineTextAlignment(.center)
                            
                            
                        
                        Image(systemName: "list.clipboard.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 80)
                            .foregroundColor(.gray)
                            .padding(.bottom)
                         
                    }
                    
                   
                }
                
                Spacer()
                  
                
             
            }
        }
    }
}


#Preview {
    PackingListPreView()
}
