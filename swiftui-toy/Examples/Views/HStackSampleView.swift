import SwiftUI

struct HStackSampleView: View {
    var body: some View {
        List {
            HStack {
                Text("Hello")
                Text(", I am Kazuki.")
                Spacer()
            }
            .border(.red)
            VStack {
                Text("Hello")
                Text(", I am Kazuki.")
            }
            .border(.red)
        }
    }
}

#Preview {
    HStackSampleView()
}
