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
        NavigationLink("001-Transition") { Transition() }
        NavigationLink("002-Rotation") { Rotation() }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
