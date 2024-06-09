import SwiftUI

enum Animal: Hashable {
    case cat
    case dog
}

struct OnChangeExampleView: View {
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var animal: Animal = .cat

    var body: some View {
        Form {
            List {
                Text("Cat")
                Text("Dog")
                Text("Bird")
                TextField("Input text1", text: self.$text1)
                Button("Append \"A\" to text1") {
                    self.text1.append("A")
                }
            }
        }
        // onChange は [T] : where T : Hashable なので、別の型を onChange で配列で撮ることはできない
//        .onChange(of: [self.text1, self.text2, self.animal]) { newValue in
//
//        }
    }
}

#Preview {
    OnChangeExampleView()
}
