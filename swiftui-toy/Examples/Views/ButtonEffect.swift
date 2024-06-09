//
//  ButtonEffect.swift
//  swiftui-toy
//
//  Created by Kazuki.Yamada on 2024/05/24.
//

import SwiftUI

struct ButtonEffectView: View {
    @State private var text = "init"

    var body: some View {
        VStack {
            Button("Tap") {
                self.text = "tapped !"
            }
            .controlSize(.large)
//            .hoverEffect()
            .padding(40)
            Text(self.text)
                .padding()
            Button("Tap") {
                self.text = "tapped !"
            }
            .buttonStyle(.borderless)
            .padding(40)
        }
    }
}


#Preview {
    ButtonEffectView()
}
