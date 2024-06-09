import SwiftUI

struct SampleView: View {
    var body: some View {
        List {
            Section {
                VStack {
                    Text("Start Point")
                    HStack {
                        Text("X") + Text(verbatim: ":") + Text("1.00000")
                        Divider()
                        Text("Y") + Text(verbatim: ":") + Text("1.00000")
                    }
                }
                VStack(alignment: .leading) {
                    Text("Start Point")
                    HStack {
                        Text("X") + Text(verbatim: ":") + Text("1.00000")
                        Divider()
                        Text("Y") + Text(verbatim: ":") + Text("1.00000")
                    }
                }
            }
        }
    }
}

#Preview {
    SampleView()
}
