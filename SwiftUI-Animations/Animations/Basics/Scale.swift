import SwiftUI

struct Scale: View {
  
  @State var scale: CGSize = .single
  
  var body: some View {
    Rectangle()
      .frame(width: 50, height: 50)
      .scaleEffect(scale)
      .onTapGesture {
        withAnimation(.linear) {
          self.scale = scale == .single ? .double : .single
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

fileprivate extension CGSize {
  static let single = CGSize(width: 1, height: 1)
  static let double = CGSize(width: 2, height: 2)
}

struct Scale_Previews: PreviewProvider {
  static var previews: some View {
    Scale()
  }
}
