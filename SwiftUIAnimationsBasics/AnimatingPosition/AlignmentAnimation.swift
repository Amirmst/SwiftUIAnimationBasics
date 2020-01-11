//
//  AlignmentAnimation.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct AlignmentAnimation: View {
    @State var move: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Animatable Properties")
            SubtitleText(subtitle: "Alignment Change")
            BannerText(text: "Animating alignment inside a container view", backColor: .blue, textColor: .white)
            
            VStack(alignment: move ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default)
                
                HStack {
                    Spacer()
                }
            }
            
            BannerText(text: "Inside an HStack:", backColor: .blue, textColor: .white)
            
            HStack(alignment: move ? .bottom : .top) {
                RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .animation(.default)
                
                VStack {
                    Spacer()
                }
            }
            
            Button(action: {self.move.toggle()} ) {
                Text("Move")
                    .font(.title)
            }
        }
    }
}

struct AlignmentAnimation_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentAnimation()
    }
}
