//
//  TextAndAnimatingCircleView.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct TextAndAnimatingCircleView: View {
    var name: String
    var animation: Animation
    var move: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text(name)
                .font(.title)
                .padding(.top, 20)
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 40, height: 40)
                .offset(x: move ? 150 : -150, y: 0)
                .animation(animation)
        }
    }
}

struct TextAndAnimatingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndAnimatingCircleView(name: "easeInOut", animation: .easeInOut, move: true)
    }
}
