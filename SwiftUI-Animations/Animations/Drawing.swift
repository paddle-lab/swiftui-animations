import SwiftUI

struct Drawing: View {
  
  private struct Line {
    var points: [CGPoint] = []
  }
  
  @State private var line = Line()
  
  var body: some View {
    ZStack {
      Rectangle()
        .fill(.white)
        .gesture(
          DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({ value in
              line.points.append(value.location)
            })
            .onEnded { _ in
              line.points.removeAll() // コードをシンプルに&見栄え良くするため
            }
        )
      Path { path in
        path.addLines(line.points)
      }
      .stroke(.black, lineWidth: 3)
    }
    .navigationTitle(String(describing: Self.self))
  }
}

struct Drawing_Previews: PreviewProvider {
  static var previews: some View {
    Drawing()
  }
}
