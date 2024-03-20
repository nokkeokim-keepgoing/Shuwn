//
//  ControlCenter.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/19/24.
//

import SwiftUI

struct ControlCenterDetail: View {
    
    @State private var isInAppAccessEnabled: Bool = true
    @State private var isHomeControlVisible: Bool = false
    var body: some View {
        VStack{
            List {
                // 앱 내 접근
                Section {
                    Toggle("앱 내 접근", isOn: $isInAppAccessEnabled)
                } header: {
                    Text("제어 센터를 열려면 우측 상단에서 아래로 쓸어내리십시오.")
                        .font(.caption)
                        .padding([.top, .bottom],20)
                } footer: {
                    Text("앱 내에서 제어 센터에 접근할 수 있도록 허용합니다. 비활성화된 상태태에서도 홈 화면에서 제어 센터에 접근할 수 있습니다.")
                        .font(.caption)
                }

                // 홈 제어 보기
                Section {
                    Toggle("홈 제어 보기", isOn: $isHomeControlVisible)
                } footer: {
                    Text("홈 액세서리 및 모드에 대한 제어 추천 사항을 포함합니다.")
                        .font(.caption)
                }
                
            }
        }
        .navigationTitle("제어 센터")
        .navigationBarTitleDisplayMode(.inline)

    }

}

#Preview {
    ControlCenterDetail()
}
