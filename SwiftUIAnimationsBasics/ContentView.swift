//
//  ContentView.swift
//  SwiftUIAnimationsBasics
//
//  Created by Amir Mostafavi on 1/11/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Position Change Animations")) {
                    NavigationLink(destination: MovingViewAnimation()) {
                        Text("Vertical Position Change")
                    }
                    NavigationLink(destination: AnimationCurvesSideBySide()) {
                        Text("Horizontal Position Change")
                    }
                    NavigationLink(destination: DiagonalMovingAnimation()) {
                        Text("Diagonal Position Change")
                    }
                    NavigationLink(destination: AlignmentAnimation()) {
                        Text("Alignment Change")
                    }
                }
                
                Section(header: Text("Color Change Animations")) {
                    NavigationLink(destination: HueRotationAnimation()) {
                        Text("Hue Rotation")
                    }
                    NavigationLink(destination: ColorChangeAnimation()) {
                        Text("Color Change")
                    }
                }
            }
            .navigationBarTitle(Text("Animations"))
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
