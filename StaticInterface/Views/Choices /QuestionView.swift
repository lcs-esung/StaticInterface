//
//  QuestionView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-03.
//

import SwiftUI

struct QuestionView: View {
    
    let question : String
    
    var body: some View {
        
        Text(question)
            .foregroundColor(.white)
            .font(Font.custom("Arial-BoldMT", size: 27))
        
        
    }
}

#Preview {
    QuestionView(question: "Where are you going?")
}
