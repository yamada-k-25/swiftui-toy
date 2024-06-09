import SwiftUI

struct ContentView: View {
    @State var path = NavigationPath()

    var body: some View{
        NavigationStack(path: $path){
            List{
                NavigationLink(HomePath.setting.toString, value: HomePath.setting)
                NavigationLink(HomePath.explain.toString, value: HomePath.explain)
                NavigationLink(HomePath.information.toString, value: HomePath.information)
            }
            .navigationTitle(HomePath.root.toString)
//            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: HomePath.self, destination: { appended in
                appended.Destination()
                    .navigationTitle(appended.toString)
//                    .navigationBarTitleDisplayMode(.inline)
            })
        }
    }
}

struct SettingView: View{
    var body: some View{
        List{
            NavigationLink(HomePath.account.toString, value: HomePath.account)
            NavigationLink(HomePath.variable.toString, value: HomePath.variable)
            NavigationLink(HomePath.fixed.toString, value: HomePath.fixed)
            NavigationLink(HomePath.premium.toString, value: HomePath.premium)
        }
    }
}

enum HomePath: Int{
    case root, setting, account, variable, fixed, premium, explain, information

    var toString: String{
        ["ホーム", "設定", "資産を管理", "変動収支を管理", "固定収支を管理", "プレミアム会員になる", "操作説明", "お知らせ"][self.rawValue]
    }

    @ViewBuilder
    func Destination() -> some View{
        switch self {
        case .root: ContentView()
        case .setting: SettingView()
        case .account: AccountView()
        case .variable: VariableView()
        case .fixed: FixedView()
        case .premium: PremiumView()
        case .explain: ExplainView()
        case .information: InformationView()
        }
    }
}

struct AccountView: View{
    var body: some View{
        Text("AccountView")
    }
}

struct VariableView: View{
    var body: some View{
        Text("VariableView")
    }
}

struct FixedView: View{
    var body: some View{
        Text("FixedView")
    }
}

struct PremiumView: View{
    var body: some View{
        Text("PremiumView")
    }
}

struct ExplainView: View{
    var body: some View{
        Text("ExplainView")
    }
}

struct InformationView: View{
    var body: some View{
        Text("InformationView")
    }
}

#Preview {
    ContentView()
}

struct SettingsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()

    static var previews: some View {
        NavigationStack(path: $path){
            SettingView()
                .navigationDestination(for: HomePath.self, destination: { appended in
                    appended.Destination()
                        .navigationTitle(appended.toString)
//                        .navigationBarTitleDisplayMode(.inline)
                })
        }
    }
}
