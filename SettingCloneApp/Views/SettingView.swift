//
//  SettingView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject var navigationManager: NavigationManager = NavigationManager()
    
    @State private var isAirplaneModeOn: Bool = false
    @State private var isBluetoothOn: Bool = false
    var bluetoothStatus: String {
        isBluetoothOn ? "켬" : "끔"
    }
    
    @State private var wifiName: String? = "SwiftFun"
    @State private var searchText: String = ""

    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            List {
                // 프로필 섹션
                Section{
                    ProfileCellView(user: user)
                }
                // 나머지 섹션
                ForEach(sections, id: \.title) { section in
                    Section {
                        ForEach(section.settings, id: \.name) { setting in
                            SettingCellView(setting: setting, isAirplaneModeOn: $isAirplaneModeOn, wifiName: wifiName, bluetoothStatus: bluetoothStatus)
                        }
                    }
                }
            } // List
            .navigationTitle("설정")
            .navigationDestination(for: SettingData.self) { setting in
                switch setting.name {
                case "제어 센터":
                    ControlCenterDetail()
                default:
                    Text("\(setting.name) 화면")
                }
            }
            .navigationDestination(for: UserData.self) { user in
                Text("\(user.name)의 프로필")
            }
            .searchable(text: $searchText)
        } // NavigationStack
        .searchable(
          text: $searchText,
          placement: .navigationBarDrawer,
          prompt: "검색"
        )
        
    }
}


#Preview {
    SettingView()
}
