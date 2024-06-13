//
//  TextBoxView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-07.
//

import SwiftUI

struct TextBoxView: View {
    
    let textFieldAnswer :String
    
    @State private var weather = ""
    
    var body: some View {
        
        
                    
            VStack{
                TextField(textFieldAnswer, text: $weather)
                    .font(Font.system(size: 24))
                    .background(.white)
                    .cornerRadius(3.0)
                    .padding(.leading)
                    .padding(.trailing)
            }
        }
    }


#Preview {
    TextBoxView(textFieldAnswer: "Enter weather range here")
}
