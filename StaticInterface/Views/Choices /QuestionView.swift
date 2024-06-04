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
            .multilineTextAlignment(.center)
            .font(Font.custom("Arial-BoldMT", size: 24))
            .padding()
        
        
    }
}

#Preview {
    QuestionView(question: "Are you heading out of your country or travelling inside your country?")
}
