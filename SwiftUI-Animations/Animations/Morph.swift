import SwiftUI

struct Morph: View {
  
  @State var radius: CGSize = .zero
  
  var body: some View {
    RoundedRectangle(cornerSize: radius)
      .frame(width: 100, height: 100)
      .onTapGesture {
        withAnimation {
          radius = radius.width > 0 ? .zero : .init(width: 100, height: 100)
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct Morph_Previews: PreviewProvider {
  static var previews: some View {
    Morph()
  }
}
