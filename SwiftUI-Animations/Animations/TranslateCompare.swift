//
//  TranslateCompare.swift
//  SwiftUI-Animations
//
//  Created by 山本 on 2022/10/11.
//

import SwiftUI

struct TranslateCompare: View {
  
  @State var linearPosition: CGSize = .init(width: -100, height: 0)
  @State var easeInPosition: CGSize = .init(width: -100, height: 0)
  @State var easeOutPosition: CGSize = .init(width: -100, height: 0)
  @State var easeInOutPosition: CGSize = .init(width: -100, height: 0)
  @State var springPosition: CGSize = .init(width: -100, height: 0)

  
  var body: some View {
    VStack {
      Text(".linear")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(linearPosition)
        .onAppear {
          withAnimation(.linear) {
            self.linearPosition = .init(width: 100, height: 0)
          }
        }
      Text(".easeIn")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(easeInPosition)
        .onAppear {
          withAnimation(.easeIn) {
            self.easeInPosition = .init(width: 100, height: 0)
          }
        }
      Text(".easeOut")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(easeOutPosition)
        .onAppear {
          withAnimation(.easeOut) {
            self.easeOutPosition = .init(width: 100, height: 0)
          }
        }
      Text(".easeInOut")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(easeInOutPosition)
        .onAppear {
          withAnimation(.easeInOut) {
            self.easeInOutPosition = .init(width: 100, height: 0)
          }
        }
      Text(".spring(dampingFraction: 0.5)")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(springPosition)
        .onAppear {
          withAnimation(.spring(dampingFraction: 0.5)) {
            self.springPosition = .init(width: 100, height: 0)
          }
        }
    }
    .navigationTitle(String(describing: Self.self))
  }
}

struct TranslateCompare_Previews: PreviewProvider {
  static var previews: some View {
    TranslateCompare()
  }
}
