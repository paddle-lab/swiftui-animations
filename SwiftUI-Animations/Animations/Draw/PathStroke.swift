import SwiftUI

struct PathStroke: View {
  
  @State var end: CGFloat = 0
  
  var body: some View {
    VStack(spacing: 48) {
      Path { path in
        path.move(to: CGPoint(x: 100, y: 0))
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 0, y: 200))
        path.closeSubpath()
      }
      .trim(from: 0, to: end)
      .stroke(lineWidth: 1)
      .frame(width: 200, height: 200)
      
      Button {
        withAnimation {
          end = end == 0 ? 1 : 0
        }
      } label: {
        Text("Tap here")
      }
    }
    .navigationTitle(String(describing: Self.self))
  }
}

struct PathStroke_Previews: PreviewProvider {
  static var previews: some View {
    PathStroke()
  }
}
