import SwiftUI

struct ConfirmationDialogAndMenuView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var isPresented: Bool = false
    @State private var counter = 0

    var body: some View {
        VStack {
            Menu {
                Button("OK 3") {
                    print("\"OK 3\" tapped")
                }
                Button("OK 2") {
                    print("\"OK 2\" tapped")
                }
                Button("OK 1") {
                    print("\"OK 1\" tapped")
                }
            } label: {
                Text("Show Menu")
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

            Spacer()

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

            Button("Count Up") {
                self.counter += 1
            }
            Text("Count: \(self.counter)")
        }
    }
}

#Preview {
    ConfirmationDialogAndMenuView()
}
