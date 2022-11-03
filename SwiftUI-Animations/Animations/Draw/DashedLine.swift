import SwiftUI

struct DashedLine: View {
  
  @State private var phase = 0.0
  
  var body: some View {
    Rectangle()
      .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [10], dashPhase: phase))
      .frame(width: 200, height: 200)
      .onAppear {
        withAnimation(.linear.repeatForever(autoreverses: false)) {
          phase -= 20
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}

struct DashedLine_Previews: PreviewProvider {
  static var previews: some View {
    DashedLine()
  }
}
