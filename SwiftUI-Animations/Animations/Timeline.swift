import SwiftUI

struct Timeline: View {
  
  var body: some View {
    TimelineView(.animation, content: { context in
      
      let newPosition: CGSize  = {
        let sec = Calendar.current.component(.second, from: context.date)
        return CGSize(width: (sec % 10) * 10 - 50, height: 0)
      }()
      
      Rectangle()
        .frame(width: 50, height: 50)
        .offset(newPosition)
    })
    .navigationTitle(String(describing: Self.self))
  }
}

struct Timeline_Previews: PreviewProvider {
  static var previews: some View {
    Timeline()
  }
}
