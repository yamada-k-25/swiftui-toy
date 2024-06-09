import SwiftUI

struct SafeAreaInsetView: View {
    var body: some View {
        List {
            Text("SafeAreaInsetView")
        }
        .safeAreaInset(edge: .bottom) {
            Button {

            } label: {
                Text("Start")
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .padding(.horizontal)
            .background(.orange)
        }
        .buttonStyle(.borderedProminent)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    SafeAreaInsetView()
}
