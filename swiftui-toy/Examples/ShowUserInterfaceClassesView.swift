import SwiftUI

struct ShowUserInterfaceClassesView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("HorizontalSizeClass:")
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
            }
            HStack {
                Text("VerticalSizeClass:")
                switch self.verticalSizeClass {
                case .compact:
                    Text("Compact")
                case .regular:
                    Text("Regular")
                case .none:
                    Text("None")
                case .some(_):
                    Text("Some")
                }
            }
        }
    }
}

#Preview {
    ShowUserInterfaceClassesView()
}
