import SwiftUI

struct Translate: View {
  
  @State var position: CGSize = .init(width: -100, height: 0)
  
  var body: some View {
    Group {
      Text("Tap Block")
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(position)
        .onTapGesture {
          withAnimation(.linear) {
            self.position.width = position.width < 0 ? 100 : -100
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
