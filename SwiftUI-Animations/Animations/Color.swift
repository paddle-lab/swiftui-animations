import SwiftUI

struct Color: View {
  
  @State var color = SwiftUI.Color.red
  
  var body: some View {
    Rectangle()
      .frame(width: 50, height: 50)
      .foregroundColor(color)
      .onTapGesture {
        withAnimation(.linear(duration: 1)) {
          switch color {
          case .red:
            self.color = .blue
          case .blue:
            self.color = .green
          case .green:
            self.color = .red
          default:
            return
          }
        }
      }
      .navigationTitle(String(describing: Self.self))
  }
}


struct Color_Previews: PreviewProvider {
  static var previews: some View {
    Color()
  }
}
