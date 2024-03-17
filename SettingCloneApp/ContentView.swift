//
//  ContentView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Section{
                    SettingCell(iconName: "hourglass", cellName: "스크린 타임")

                    SettingCell(iconName: "hourglass", cellName: "동작 버튼")
                }
                
                Section{
                    SettingCell(iconName: "hourglass", cellName: "일반")

                    SettingCell(iconName: "hourglass", cellName: "손쉬운 사용")
                    
                    SettingCell(iconName: "hourglass", cellName: "개인정보 보호 및 보안")
                    
                }
                
                Section{
                    SettingCell(iconName: "hourglass", cellName: "암호")
                }
                
                Section{
                    SettingCell(iconName: "hourglass", cellName: "Safari")

                    SettingCell(iconName: "hourglass", cellName: "News")
                    
                    SettingCell(iconName: "hourglass", cellName: "번역")
                    
                    SettingCell(iconName: "hourglass", cellName: "지도")

                    SettingCell(iconName: "hourglass", cellName: "단축어")
                    
                    SettingCell(iconName: "hourglass", cellName: "건강")
                    
                    SettingCell(iconName: "hourglass", cellName: "Siri 및 검색")

                    SettingCell(iconName: "hourglass", cellName: "사진")
                    
                    SettingCell(iconName: "hourglass", cellName: "Game Center")
                }
                Section{}
                Section{
                    SettingCell(iconName: "hourglass", cellName: "암호")
                }
            } // List
            .navigationTitle(Text("설정"))
        }
    }
    
}

#Preview {
    ContentView()
}
