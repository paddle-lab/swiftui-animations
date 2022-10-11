//
//  Translate.swift
//  SwiftUI-Animations
//
//  Created by 山本 on 2022/10/11.
//

import SwiftUI

struct Translate: View {
  
  @State var position: CGSize = .init(width: -100, height: 0)
  
  var body: some View {
    Group {
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(position)
        .onAppear {
          withAnimation(.linear) {
            self.position = .init(width: 100, height: 0)
          }
        }
    }
    .navigationTitle(String(describing: Self.self))
  }
}

struct Translate_Previews: PreviewProvider {
  static var previews: some View {
    Translate()
  }
}
