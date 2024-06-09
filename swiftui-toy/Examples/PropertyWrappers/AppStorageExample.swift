import SwiftUI

struct AppStorageExampleView: View {
    @AppStorage("count") private var count = 0
    @State private var countString = ""

    private func initializeCount() {
        self.countString = String(count)
    }

    var body: some View {
        VStack {
            Text("Counter")
                .padding()
            Text("count: \(count)")
                .padding()
            TextField("input", text: self.$countString)
//                .keyboardType(.numbersAndPunctuation)
//                .multilineTextAlignment(.trailing)
        }
        .onAppear {

        }
    }
}
