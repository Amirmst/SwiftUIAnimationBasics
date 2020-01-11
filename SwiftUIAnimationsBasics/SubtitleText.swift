//
//  SubtitleText.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct SubtitleText: View {
    var subtitle: String
    
    var body: some View {
        Text(subtitle)
            .font(.title)
            .foregroundColor(.gray)
    }
}

struct SubtitleText_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleText(subtitle: "Subtitle")
    }
}
