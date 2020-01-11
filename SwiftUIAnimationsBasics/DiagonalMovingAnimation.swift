//
//  DiagonalMovingAnimation.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct DiagonalMovingAnimation: View {
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Example")
            SubtitleText(subtitle: "Diagonal")
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 40, height: 40)
                // change in position
                .offset(x: change ? 150 : -150, y: change ? 600 : 0)
                .animation(.easeInOut(duration: 1))
            
            Spacer()
            
            Button(action: {self.change.toggle()} ) {
                Text("Change")
                    .font(.title)
            }
            .padding(.bottom)
        }
    }
}

struct DiagonalMovingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DiagonalMovingAnimation()
    }
}
