//
//  ToggleCellView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct ToggleCellView: View {
    let setting: SettingData
    @Binding var isAirplaneModeOn: Bool
    
    var body: some View {
        Label {
            Toggle(isOn: $isAirplaneModeOn) {
                Text(setting.name)
            }
        } icon: {
            IconView(name: setting.iconName, backgroundColor: setting.iconBackgroundColor)
        }
    }
}
#Preview {
    ToggleCellView(setting: SettingData(name: "에어플레인 모드", iconName: "airplane", iconBackgroundColor: .orange, type: .toggle), isAirplaneModeOn: .constant(true))
}
