import SwiftUI

/**
 GroupBox構造体は、UIの一部をグループ化して視覚的に区別する構造体を管理する。
 */
struct GroupBoxExampleView: View {
    @State private var setting1: Bool = true
    @State private var setting2: Bool = true
    @State private var setting3: Bool = true
    
    var body: some View {
        Form {
          // 視覚的にグループ化
            VStack {
                GroupBox("Settings") {
                    VStack(spacing: 8) {
                        Toggle("Push", isOn: $setting1)
                        Toggle("SNS", isOn: $setting2)
                        Toggle("E-mail", isOn: $setting3)
                    }
                }
                
                // ラベルを指定してグループ化
                Section {
                    GroupBox(label: Label("注意", systemImage: "exclamationmark.triangle")) {
                        HStack {
                            Text("どれか１つONにしてください")
                                .padding()
                        Spacer()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GroupBoxExampleView()
}
