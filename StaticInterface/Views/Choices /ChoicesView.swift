//
//  ChoicesView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-03.
////
//
//import SwiftUI
//
//struct ChoicesView: View {
//    
//    let gradientColor = Gradient(colors: [.lightBlue, .lightGrey])
//
//    var body: some View {
//        
//        let lightGrey = Color(
//                   hue: 0/360.0,
//                   saturation: 0.0,
//                   brightness: 0.93
//               )
//        
//        let gradient2 = LinearGradient(gradient: gradientColor, startPoint: UnitPoint(x: 1, y: 0.5), endPoint: UnitPoint(x: 1, y: 1))
//        
//        ZStack{
//            
//            Rectangle()
//                .foregroundStyle(gradient2)
//                .ignoresSafeArea()
//            
//            
//            
//            VStack{
//                
//                BackView()
//                
//                Spacer()
//                
//                TitleView()
//                
//                QuestionView(question: "What is the purpose of your trip?")
//                    
//                HStack{
//                    ChoiceButtonView(title: "Business", picture: Image(systemName: "banknote.fill"))
//                    
//                    ChoiceButtonView(title: "Personal", picture: Image(systemName: "backpack.fill"))
//                    
//                    }
//                
//                Spacer()
//            }
//            
//        }
//        
//    }
//}
//
//#Preview {
//    ChoicesView()
//}
