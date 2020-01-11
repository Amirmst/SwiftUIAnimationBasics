//
//  TitleText.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct TitleText: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(title: "Title")
    }
}
