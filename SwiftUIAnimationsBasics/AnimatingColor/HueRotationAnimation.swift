//
//  HueRotationAnimation.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct HueRotationAnimation: View {
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Animatable Properties")
            SubtitleText(subtitle: "Hue")
            BannerText(text: "The change button triggers the change in hue.", backColor: Color.blue, textColor: Color.white)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 400, height: 400)
                .padding(.top, 40)
                .foregroundColor(.blue)
                .hueRotation(Angle.degrees(change ? 170 : 0))
                .animation(.easeInOut)
            
            Spacer()
            
            Button(action: {self.change.toggle()} ) {
                Text("Change")
                    .font(.title)
            }
            .padding(.bottom)
        }
    }
}

struct HueRotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        HueRotationAnimation()
    }
}
