//
//  SettingView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject var navigationManager: NavigationManager = NavigationManager()
    @ObservedObject var settingEnvironmentData: SettingEnvironmentData = SettingEnvironmentData()
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            List {
                // 프로필 섹션
                Section{
                    ProfileRow(user: USER)
                }
                // 나머지 섹션
                ForEach(SECTIONS, id: \.title) { section in
                    Section {
                        ForEach(section.settings, id: \.name) { setting in
                            SettingRow(setting: setting)
                        }
                    }
                }
            } // List
            .navigationTitle("설정")
            .navigationDestination(for: Setting.self) { setting in // 설정 탭
                switch setting.name { // TODO: 설정 이름 enum으로 변경
                case "제어 센터":
                    ControlCenterDetail()
                case "사운드 및 햅틱":
                    SoundsAndHapticsView()
                default:
                    Text("\(setting.name) 화면")
                }
            }
            .navigationDestination(for: User.self) { user in // 프로필
                Text("\(user.name)의 프로필")
            }
            .navigationDestination(for: DetailCellData.self, destination: { detailCell in // 설정 상세 페이지
                Text("\(detailCell.title)")
            })
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
