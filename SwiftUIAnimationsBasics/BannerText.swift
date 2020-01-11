//
//  BannerText.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct BannerText: View {
    var text: String
    var backColor: Color
    var textColor: Color
    
    init(text: String, backColor: Color = Color.orange, textColor: Color = Color.primary) {
        self.text = text
        self.backColor = backColor
        self.textColor = textColor
    }
    var body: some View {
        Text(text)
            .font(.title)
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.center)
        .padding()
        .background(backColor)
        .foregroundColor(textColor)
    }
}

struct BannerText_Previews: PreviewProvider {
    static var previews: some View {
        BannerText(text: "Banner")
    }
}
