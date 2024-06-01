//
//  TitleView.swift
//  StaticInterface
//
//  Created by Edna Sung on 2024-06-01.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        
        HStack {
            Text("PackPal")
                .font(.system(size: 50))
                .font(Font.custom("Arial-BoldMT", size: 17))
                .foregroundColor(.white)
            
            Image(systemName: "suitcase.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
        }
      
    }
}

#Preview {
    TitleView()
}
