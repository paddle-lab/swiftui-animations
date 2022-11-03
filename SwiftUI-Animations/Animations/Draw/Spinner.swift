//
//  Spinner.swift
//  SwiftUI-Animations
//
//  Created by Junya on 2022/11/03.
//

import SwiftUI

struct Spinner: View {
  
  @State var strokeStart: CGFloat = 0
  @State var strokeEnd: CGFloat = 0
  @State var angle: Angle = .degrees(0)
  
  var body: some View {
    Circle()
      .trim(from: strokeStart, to: strokeEnd)
      .stroke(.gray, lineWidth: 6)
      .rotationEffect(angle)
      .frame(width: 40, height: 40)
      .onAppear {
        withAnimation(.easeOut(duration: 1.8).repeatForever(autoreverses: false)) {
          strokeEnd = 1
        }
        withAnimation(.linear(duration: 1.5).repeatForever(autoreverses: false)) {
          angle = .degrees(360)
        }
        withAnimation(.easeIn(duration: 1.8).repeatForever(autoreverses: false)) {
          strokeStart = 1
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct Spinner_Previews: PreviewProvider {
  static var previews: some View {
    Spinner()
  }
}
