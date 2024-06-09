import SwiftUI

struct FontSampleView: View {
    @State private var text = ""

    var body: some View {
        List {
            TextField("Input, monospacedDigit", text: self.$text)
                .monospacedDigit()
            TextField("Input", text: self.$text)
                .font(.body.monospacedDigit())
            TextField("Input", text: self.$text)
                .font(.title)
                .monospacedDigit()
            Text("Inpput 12254 ")
                .font(.title)
                .monospacedDigit()
            Text("Input 122954 aaa")
                .font(.body.monospacedDigit())
            Text("Input 111111 aaa")
                .font(.body)
            Text("Input 12254 aaa")
                .font(.subheadline)
                .monospacedDigit()
            Text("Input 33344 aaa")
                .font(.headline)
                .monospacedDigit()
            Button("Input") {
                print("tapped")
            }
            .hoverEffect()
        }
    }
}

#Preview {
    FontSampleView()
}
