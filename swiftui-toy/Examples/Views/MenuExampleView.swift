import SwiftUI

struct MenuExampleView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var counter = 0
    @State private var isSheetPresented = false

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

            Spacer()

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

            Button("Show Sheet") {
                self.isSheetPresented = true
            }
            .sheet(isPresented: self.$isSheetPresented) {
                NavigationStack {
                    Text("this view is Sheet")
                }
            }

            Button("Count Up") {
                self.counter += 1
            }
            Text("Count: \(self.counter)")
        }
    }
}

#Preview {
    MenuExampleView()
}
