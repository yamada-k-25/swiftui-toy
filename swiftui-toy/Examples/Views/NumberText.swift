import SwiftUI


struct NumberText: View {
    @State private var text1: String = ""
    @State private var text2: String = ""

    var body: some View {
        List {
            Section("monospacedDigit") {
                Text("1.0000")
                    .monospacedDigit()
                Text("1.3984")
                    .monospacedDigit()
            }
            Section("non monospacedDigit") {
                Text("1.0000")
                Text("1.3984")
            }
            Text("1.0000")
            Text("1.3984")

            Section("Input") {
                TextField(text: self.$text1) {
                    Text("text1")
                }
                .monospacedDigit()
                TextField(text: self.$text2) {
                    Text("text2")
                }
                .monospacedDigit()
            }
        }
    }
}

#Preview {
    NumberText()
}
