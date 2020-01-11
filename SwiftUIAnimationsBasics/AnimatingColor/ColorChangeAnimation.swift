//
//  ColorAnimation.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct ColorChangeAnimation: View {
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Animatable Properties")
            SubtitleText(subtitle: "Color")
            BannerText(text: "The change button triggers the change in color.", backColor: Color.blue, textColor: Color.white)
            
            TextAndAnimatingRectangleColor(text: "With animation", animation: .easeInOut, change: change, primaryColor: Color.blue, secondaryColor: Color.orange)
            
            TextAndAnimatingRectangleColor(text: "Without animation", animation: nil, change: change, primaryColor: Color.blue, secondaryColor: Color.orange)
            
            Spacer()
            
            Button(action: {self.change.toggle()} ) {
                Text("Change")
                    .font(.title)
            }
            .padding(.bottom)
        }
    }
}

struct ColorChangeAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ColorChangeAnimation()
    }
}
