import SwiftUI

struct FrameModifierView: View {
    var body: some View {
        VStack {
            VStack {
                Text("AAA")
                    .background(.green)
                Rectangle()
                    .foregroundStyle(.blue)
            }
            .frame(width: 200)
            .background(.red)
        }
    }
}

#Preview {
    FrameModifierView()
}
