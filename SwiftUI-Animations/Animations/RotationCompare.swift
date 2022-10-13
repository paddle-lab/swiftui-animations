//
//  RotationCompare.swift
//  SwiftUI-Animations
//
//  Created by Junya on 2022/10/13.
//

import SwiftUI

struct RotationCompare: View {
  
  @State var lenearAngle: Angle = .degrees(0)
  @State var easeInAngle: Angle = .degrees(0)
  @State var easeOutAngle: Angle = .degrees(0)
  @State var easeInOutAngle: Angle = .degrees(0)
  @State var springAngle: Angle = .degrees(0)
  
  var body: some View {
    VStack {
      Text(".linear")
      Rectangle()
        .rotation(lenearAngle)
        .frame(width: 50, height: 50)
        .onTapGesture {
          withAnimation(.linear) {
            self.lenearAngle.degrees += 180
          }
        }
      Text(".easeIn")
      Rectangle()
        .rotation(easeInAngle)
        .frame(width: 50, height: 50)
        .onTapGesture {
          withAnimation(.easeIn) {
            self.easeInAngle.degrees += 180
          }
        }
      Text(".easeOut")
      Rectangle()
        .rotation(easeOutAngle)
        .frame(width: 50, height: 50)
        .onTapGesture {
          withAnimation(.easeOut) {
            self.easeOutAngle.degrees += 180
          }
        }
      Text(".easeInOut")
      Rectangle()
        .rotation(easeInOutAngle)
        .frame(width: 50, height: 50)
        .onTapGesture {
          withAnimation(.easeInOut) {
            self.easeInOutAngle.degrees += 180
          }
        }
      Text(".spring(dampingFraction: 0.5)")
      Rectangle()
        .rotation(springAngle)
        .frame(width: 50, height: 50)
        .onTapGesture {
          withAnimation(.spring(dampingFraction: 0.5)) {
            self.springAngle.degrees += 180
          }
        }
    }
    .navigationTitle(String(describing: Self.self))
  }
}

struct RotationCompare_Previews: PreviewProvider {
  static var previews: some View {
    RotationCompare()
  }
}
