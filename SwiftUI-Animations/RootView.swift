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
        NavigationLink { TransitionView() } label: { Text("001-Transition") }
        NavigationLink { RotationView() } label: { Text("002-Rotation") }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
