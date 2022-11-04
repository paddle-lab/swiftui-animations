import SwiftUI

struct Progress: View {
  
  @State var angle: Angle = .degrees(0)
  let start = Date()
  
  var array = 0...7
  
  var dot: some View {
    Capsule()
      .fill(.gray)
      .frame(width: 4, height: 10)
      .offset(y: -11.5)
  }
  
  var customProgressView: some View {
    TimelineView(.periodic(from: start, by: 0.1), content: { context in
      
      let angle: Angle  = {
        let sec = context.date.millisecondsSince1970 - start.millisecondsSince1970
        return .degrees(Double(sec) / 100 * 45)
      }()
      ZStack {
        ForEach(array, id: \.self) { i in
          dot
            .rotationEffect(.degrees(Double(i) * 45))
            .opacity(max(Double(i) * 0.125, 0.1))
        }
      }
      .rotationEffect(angle)
      .frame(width: 42, height: 42)
    })
  }
  
  var body: some View {
    HStack(spacing: 50) {
      customProgressView
      ProgressView()
    }
    
      .navigationTitle(String(describing: Self.self))
  }
}

extension Date {
  var millisecondsSince1970: Int64 {
    Int64((self.timeIntervalSince1970 * 1000.0).rounded())
  }
}

struct Progress_Previews: PreviewProvider {
  static var previews: some View {
    Progress()
  }
}
