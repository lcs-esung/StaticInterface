//
//  ChoiceButtonView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-03.
//

import SwiftUI

struct ChoiceButtonView: View {
    let title : String
    let picture : Image
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.slightGrey)
                .aspectRatio(contentMode: .fit)
                .frame(height: 170)
                .cornerRadius(30)
                
            
            VStack {
                Text(title)
                    .font(Font.custom("Arial", size: 23))
                    .multilineTextAlignment(.center)
                    .padding()
                    
                
               picture
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .foregroundColor(.gray)
                 
            }
            
           
        }
    }
}

#Preview {
ChoiceButtonView(title: "In the country", picture: Image(systemName: "airplane.departure"))
}
