import SwiftUI

struct ParentView: View {
    @State private var text: String = ""

    var body: some View {
        VStack {
            ChildView(text: self.text)
                .padding()
            TextField("Input", text: self.$text)
                .textFieldStyle(.roundedBorder)
                .tint(.accentColor)
                .padding()
        }
    }
}

struct ChildView: View {
    let text: String

    var body: some View {
        let _ = Self._printChanges()
        Text(text)
            .border(.tint)
    }
}
