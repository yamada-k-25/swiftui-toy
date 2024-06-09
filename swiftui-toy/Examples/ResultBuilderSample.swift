//
@resultBuilder
struct Hoge {
    static func buildBlock(_ components: String...) -> String {
        components.joined()
    }
}


