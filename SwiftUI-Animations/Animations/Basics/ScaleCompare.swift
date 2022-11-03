import SwiftUI

struct ScaleCompare: View {
  
  @State var lenearScale = CGSize.half
  @State var easeInScale = CGSize.half
  @State var easeOutScale = CGSize.half
  @State var easeInOutScale = CGSize.half
  @State var springScale = CGSize.half
  
  var body: some View {
    VStack {
      Text(".linear")
      Rectangle()
        .frame(width: 100, height: 100)
        .scaleEffect(lenearScale)
        .onTapGesture {
          withAnimation(.linear) {
            self.lenearScale = lenearScale == .single ? .half : .single
          }
        }
      Text(".easeIn")
      Rectangle()
        .frame(width: 100, height: 100)
        .scaleEffect(easeInScale)
        .onTapGesture {
          withAnimation(.easeIn) {
            self.easeInScale = easeInScale == .single ? .half : .single
          }
        }
      Text(".easeOut")
      Rectangle()
        .frame(width: 100, height: 100)
        .scaleEffect(easeOutScale)
        .onTapGesture {
          withAnimation(.easeOut) {
            self.easeOutScale = easeOutScale == .single ? .half : .single
          }
        }
      Text(".easeInOut")
      Rectangle()
        .frame(width: 100, height: 100)
        .scaleEffect(easeInOutScale)
        .onTapGesture {
          withAnimation(.easeInOut) {
            self.easeInOutScale = easeInOutScale == .single ? .half : .single
          }
        }
      Text(".spring(dampingFraction: 0.5)")
      Rectangle()
        .frame(width: 100, height: 100)
        .scaleEffect(springScale)
        .onTapGesture {
          withAnimation(.spring(dampingFraction: 0.5)) {
            self.springScale = springScale == .single ? .half : .single
          }
        }
    }
    .navigationTitle(String(describing: Self.self))
  }
}

fileprivate extension CGSize {
  static let half = CGSize(width: 0.5, height: 0.5)
  static let single = CGSize(width: 1, height: 1)
}

struct ScaleCompare_Previews: PreviewProvider {
  static var previews: some View {
    ScaleCompare()
  }
}
