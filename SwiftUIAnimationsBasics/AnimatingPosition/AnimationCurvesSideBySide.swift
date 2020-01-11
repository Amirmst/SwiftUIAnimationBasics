//
//  AnimationCurvesSideBySide.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct AnimationCurvesSideBySide: View {
    @State var move: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            TitleText(title: "Curves")
            SubtitleText(subtitle: "Example")
            BannerText(text: "All four preset animation curves")
            
            Group {
                TextAndAnimatingCircleView(name: "easeInOut & default", animation: .easeInOut, move: move)
                    .padding(.top, 20)
                
                TextAndAnimatingCircleView(name: "easeIn", animation: .easeIn, move: move)
                
                TextAndAnimatingCircleView(name: "easeOut", animation: .easeOut, move: move)
                
                TextAndAnimatingCircleView(name: "linear", animation: .linear, move: move)
            }
            
            Spacer()
            
            Button(action: {self.move.toggle()} ) {
                Text("Move")
                    .font(.title)
            }
            .padding(.bottom)
        }
    }
}

struct AnimationCurvesSideBySide_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesSideBySide()
    }
}
