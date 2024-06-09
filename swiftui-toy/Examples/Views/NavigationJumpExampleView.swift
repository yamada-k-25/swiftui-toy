import SwiftUI

struct NavigationJumpExampleView: View {
    @State var view1isPresented: Bool = false
    @State var view2isPresented: Bool = false


    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(isActive: self.$view1isPresented, destination: {
                    VStack {
                        Text("view 1")
                        Button("preset view 2") {
                                self.view2isPresented = true
                        }
                        .navigationTitle("View 1")
                    }
                }) {
                    Text("View 1")
                        .padding()
                }
                NavigationLink(isActive: self.$view2isPresented, destination: {
                    VStack {
                        Text("view 2")
                        Button("present view 1") {
                            self.view1isPresented = true
                        }
                    }
                    .navigationTitle("View 2")
                }) {
                    Text("View 2")
                        .padding()
                }
            }
        }
    }
}


#Preview {
    NavigationJumpExampleView()
}
