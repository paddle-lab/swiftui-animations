//
//  Rotation.swift
//  SwiftUI-Animations
//
//  Created by 山本 on 2022/10/11.
//

import SwiftUI

struct Rotation: View {
  
  @State var angle: Angle = .degrees(0)
  
  var body: some View {
    Rectangle()
      .rotation(angle)
      .frame(width: 50, height: 50)
      .onAppear {
        withAnimation(.linear) {
          self.angle = .degrees(180)
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct Rotation_Previews: PreviewProvider {
  static var previews: some View {
    Rotation()
  }
}
