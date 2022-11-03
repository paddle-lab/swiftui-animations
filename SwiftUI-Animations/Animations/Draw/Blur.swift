import SwiftUI

struct Blur: View {
  
  @State var blurRadius: CGFloat = 0
  
  var body: some View {
    HStack(spacing: 0) {
      Rectangle()
        .fill(.red)
        .frame(width: 50, height: 50)
      Rectangle()
        .fill(.blue)
        .frame(width: 50, height: 50)
    }
    .blur(radius: blurRadius)
    .onTapGesture {
      withAnimation(.linear) {
        blurRadius = blurRadius > 0 ? 0 : 10
      }
    }
    .navigationTitle(String(describing: Self.self))
  }
}

struct Blur_Previews: PreviewProvider {
  static var previews: some View {
    Blur()
  }
}
