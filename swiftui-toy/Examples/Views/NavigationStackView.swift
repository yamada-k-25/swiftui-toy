import SwiftUI

struct Park: Identifiable {
    let name: String
    let id: UUID = .init()
}

extension Park: Hashable {}

struct NavigationStackView: View {
    @State private var presentedParks: [Park] = []
    @State private var parks: [Park] = [.init(name: "イタリア"), .init(name: "中島")]

    var body: some View {
        NavigationStack(path: $presentedParks) {
            Section {
                List(self.parks) { park in
                    NavigationLink(park.name, value: park)
                }
                Button("showParks") {
                    self.showParks()
                }
            }
            .navigationDestination(for: Park.self) { park in
                ParkDetails(park: park)
            }
        }
    }

    func showParks() {
        self.presentedParks = [Park(name: "Yosemite"), Park(name: "Sequoia")]
    }
}
struct ParkDetails: View {
    let park: Park

    var body: some View {
        Text(park.name)
    }
}

#Preview {
    NavigationStackView()
}
