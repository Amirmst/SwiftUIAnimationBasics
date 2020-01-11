//
//  PositionInGeometryReader.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct PositionInGeometryReader: View {
    @State var move: Bool = false
    
    var body: some View {
        VStack {
            TitleText(title: "Animatable Properties")
            SubtitleText(subtitle: "In Geometry Reader")
            BannerText(text: "Animating the center point of a view within a GeometryReader's coordinate space.", backColor: .blue, textColor: .white)
            
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(self.move ? CGPoint(x: 100, y: 100) : CGPoint(x: 300, y: 300))
                    .animation(.default)
            }
            
            Button("Change") {
                self.move.toggle()
            }.font(.title)
            
        }
    }
}

struct PositionInGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        PositionInGeometryReader()
    }
}
