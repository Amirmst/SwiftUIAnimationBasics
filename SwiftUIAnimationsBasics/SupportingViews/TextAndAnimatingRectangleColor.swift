//
//  TextAndAnimatingCircleView.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct TextAndAnimatingRectangleColor: View {
    var text: String
    var animation: Animation?
    var change: Bool
    var primaryColor: Color
    var secondaryColor: Color
    
    var body: some View {
        VStack(spacing: 5) {
            Text(text)
                .font(.title)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? secondaryColor : primaryColor)
                .padding()
                .animation(animation)
        }
    }
}

struct TextAndAnimatingRectangleColor_Previews: PreviewProvider {
    static var previews: some View {
        TextAndAnimatingRectangleColor(text: "With Animation", animation: .easeInOut, change: true, primaryColor: Color.blue, secondaryColor: Color.orange)
    }
}

