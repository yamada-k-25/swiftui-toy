import SwiftUI

struct ConfirmationDialogExampleView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var isPresented: Bool = false
    @State private var counter = 0

    var body: some View {
        VStack {
            Button("Show Confirmation Dialog") {
                self.isPresented = true
            }
            .confirmationDialog(
                "Confirmation",
                isPresented: self.$isPresented
            ) {
                Button("OK 3") {
                }
                Button("OK 2") {
                }
                Button("OK 1") {
                }
            } message: {
                Text("Please tap OK 1 or OK 2 or OK 3.")
            }

            switch self.horizontalSizeClass {
            case .compact:
                Text("Compact")
            case .regular:
                Text("Regular")
            case .none:
                Text("None")
            case .some(_):
                Text("Some")
            }

            Button("Count Up") {
                self.counter += 1
            }
            Text("Count: \(self.counter)")
        }
        #if os(macOS)
        .frame(width: 700, height: 600)
        #endif
    }
}

#Preview {
    ConfirmationDialogExampleView()
}
