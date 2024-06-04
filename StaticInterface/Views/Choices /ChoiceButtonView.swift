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
                .foregroundStyle(.lightGrey)
                .frame(height: 170)
                .cornerRadius(30)
                .padding(.all, 113)
              
            
            VStack {
                Text(title)
                    .font(Font.custom("Arial", size: 23))
                    
                
               picture
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                 
            }
            
           
        }
    }
}

#Preview {
ChoiceButtonView(title: "In the country", picture: Image(systemName: "airplane.departure"))
}
