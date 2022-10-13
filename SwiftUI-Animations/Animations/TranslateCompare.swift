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
        .onTapGesture {
          withAnimation(.linear) {
            self.linearPosition.width = linearPosition.width < 0 ? 100 : -100
          }
        }
      Text(".easeIn")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(easeInPosition)
        .onTapGesture {
          withAnimation(.easeIn) {
            self.easeInPosition.width = easeInPosition.width < 0 ? 100 : -100
          }
        }
      Text(".easeOut")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(easeOutPosition)
        .onTapGesture {
          withAnimation(.easeOut) {
            self.easeOutPosition.width = easeOutPosition.width < 0 ? 100 : -100
          }
        }
      Text(".easeInOut")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(easeInOutPosition)
        .onTapGesture {
          withAnimation(.easeInOut) {
            self.easeInOutPosition.width = easeInOutPosition.width < 0 ? 100 : -100
          }
        }
      Text(".spring(dampingFraction: 0.5)")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(springPosition)
        .onTapGesture {
          withAnimation(.spring(dampingFraction: 0.5)) {
            self.springPosition.width = springPosition.width < 0 ? 100 : -100
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
