import SwiftUI

/**
P259
Group構造体は、ビューをグルプ化する。
VStack/HStack/Listなどの内容を複数のビューを配置
ブロック内部のビューにまとめてクラスモディファイア
を適応する。
 */
struct GroupExampleView: View {
    var body: some View {
        VStack {
            Group {
                Text("SwiftUI")
                Text("Language: Swift")
            }.font(.title)
        }
        
        Group {
            Text("iOS13.0")
            Text("iPadOS 13.0+")
        }.foregroundStyle(Color.gray)
    }
}

#Preview {
    GroupExampleView()
}
