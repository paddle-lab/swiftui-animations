//
//  RootView.swift
//  SwiftUI-Animations
//
//  Created by 山本 on 2022/10/11.
//

import SwiftUI

struct RootView: View {
  
  var body: some View {
    NavigationView {
      List {
        Section("Basics") {
          NavigationLink("001-Translate") { Translate() }
          NavigationLink("002-TranslateCompare")  { TranslateCompare() }
          NavigationLink("003-Rotation") { Rotation() }
          NavigationLink("004-RotationCompare") { RotationCompare() }
          NavigationLink("005-Scale") { Scale() }
          NavigationLink("006-ScaleCompare") { ScaleCompare() }
          NavigationLink("007-Rotation3D") { Rotation3D() }
          NavigationLink("008-Timeline") { Timeline() }
          NavigationLink("009-Fade") { Fade() }
          NavigationLink("010-Color") { Color() }
        }
        Section("Draw") {
          NavigationLink("011-PathStroke") { PathStroke() }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
