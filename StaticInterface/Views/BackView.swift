//
//  BackView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-04.
//

import SwiftUI

struct BackView: View {
    var body: some View {
        
        HStack {
            
            Image(systemName: "arrow.left")
                .foregroundColor(.white)
                .font(Font.custom("Arial-BoldMT", size: 20))
                .padding(.leading, 20)
             
            Text("Back")
                .foregroundColor(.white)
                .font(Font.custom("Arial-BoldMT", size: 20))
            
            Spacer()
        }
        
        
    }
}

#Preview {
    BackView()
}
