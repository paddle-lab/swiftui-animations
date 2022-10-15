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
        NavigationLink("001-Translate") { Translate() }
        NavigationLink("002-TranslateCompare")  { TranslateCompare() }
        NavigationLink("003-Rotation") { Rotation() }
        NavigationLink("004-Rotation") { RotationCompare() }
        NavigationLink("005-Scale") { Scale() }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
