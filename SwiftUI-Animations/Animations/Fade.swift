import SwiftUI

struct Fade: View {
  
  @State var opacity: CGFloat = 1
  
  var body: some View {
    Rectangle()
      .frame(width: 50, height: 50)
      .opacity(opacity)
      .onAppear {
        withAnimation(.linear.repeatForever()) {
          self.opacity = opacity == 0 ? 1 : 0
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct Fade_Previews: PreviewProvider {
  static var previews: some View {
    Fade()
  }
}
