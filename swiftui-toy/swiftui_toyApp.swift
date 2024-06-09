import SwiftUI
import SwiftData

@main
struct swiftui_toyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                List {
                    NavigationLink("\(ButtonEffectView.self)") {
                        ButtonEffectView()
                    }
                    NavigationLink("\(SafeAreaInsetView.self)") {
                        SafeAreaInsetView()
                    }
                    NavigationLink("\(OnChangeExampleView.self)") {
                        OnChangeExampleView()
                    }
                    NavigationLink("\(FontSampleView.self)") {
                        FontSampleView()
                    }
                }
            }
        }
    }
}
