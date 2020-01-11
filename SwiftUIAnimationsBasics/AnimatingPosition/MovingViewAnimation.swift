//
//  NoAnimation_Example.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct MovingViewAnimation: View {
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Example")
            SubtitleText(subtitle: "Simple Animation")
            BannerText(text: "The button changes the state variable which triggres the animation on the Circle.")
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                // change in position
                .offset(x: 0, y: change ? 250 : 0)
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

struct MovingViewAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MovingViewAnimation()
    }
}
