import SwiftUI

struct Deformation: View {
  
  @State var p1 = CGPoint(x: 100, y: 0)
  @State var p2 = CGPoint(x: 0, y: 0)
  @State var p3 = CGPoint(x: 100, y: 100)
  
  var body: some View {
    Triangle(p1: p1, p2: p2, p3: p3)
      .stroke(lineWidth: 1)
      .frame(width: 200, height: 200)
      .onAppear {
        withAnimation(.linear(duration: 2).repeatForever()) {
          p1 = CGPoint(x: 0, y: 0)
          p2 = CGPoint(x: 100, y: -100)
          p3 = CGPoint(x: 100, y: 0)
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct Triangle: Shape {
  
  typealias AnimatablePoints = AnimatablePair<CGPoint.AnimatableData, AnimatablePair<CGPoint.AnimatableData, CGPoint.AnimatableData>>
  
  var animatableData: AnimatablePoints {
    get { .init(p1.animatableData, .init(p2.animatableData, p3.animatableData)) }
    set {
      p1.animatableData = newValue.first
      p2.animatableData = newValue.second.first
      p3.animatableData = newValue.second.second
    }
  }
  
  var p1: CGPoint
  var p2: CGPoint
  var p3: CGPoint
  
  func path(in rect: CGRect) -> Path {
    Path { path in
      path.move(to: p1)
      path.addLine(to: p2)
      path.addLine(to: p3)
      path.closeSubpath()
    }
  }
}

struct Deformation_Previews: PreviewProvider {
  static var previews: some View {
    Deformation()
  }
}
