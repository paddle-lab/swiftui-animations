import SwiftUI

struct Rotation3D: View {
  
  @State var angle: Angle = .degrees(0)
  
  var body: some View {
    Rectangle()
      .rotation3DEffect(angle, axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 0, perspective: 1)
      .frame(width: 50, height: 50)
      .onTapGesture {
        withAnimation(.linear) {
          self.angle.degrees += 180
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct Rotation3D_Previews: PreviewProvider {
  static var previews: some View {
    Rotation3D()
  }
}
