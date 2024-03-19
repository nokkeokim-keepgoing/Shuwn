//
//  ContentView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var searchQueryString = ""

    var body: some View {
        NavigationView {
            List {
                
                // 프로필
                Section {
                    NavigationLink {
                        Text("프로필 화면")
                    } label: {
                        HStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding([.top, .leading, .trailing], 10.0)
                                .background(.gray.opacity(0.4))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                            
//                                // Question Point
//                                Spacer().frame(width: 12)
                            
                            VStack(alignment: .leading) {
                                Text("Shwun Jung")
                                    .font(.title3)
                                
//                                    // Question Point
//                                    Spacer().frame(height: 3)
                                
                                Text("iCloud, App Store 등 설정")
                                    .font(.caption)
                            } // VStack
                            .padding(.leading, 6)
                        } // HStack
                    } // label
                }
                
                // 네트워크
                Section {
                    SettingCell(iconName: "hourglass", cellName: "에어플레인 모드", iconColor: .orange)

                    SettingCell(iconName: "button.vertical.left.press", cellName: "Wi-fi", iconColor: .blue)
                    
                    SettingCell(iconName: "button.vertical.left.press", cellName: "Bluetooth", iconColor: .blue)
                    
                    SettingCell(iconName: "button.vertical.left.press", cellName: "셀룰러", iconColor: .green)
                    
                    SettingCell(iconName: "button.vertical.left.press", cellName: "개인용 핫스팟", iconColor: .green)
                } // Section
                
                // 알림
                Section {
                    SettingCell(iconName: "hourglass", cellName: "알림", iconColor: .red)
                    
                    SettingCell(iconName: "hourglass", cellName: "사운드 및 햅틱", iconColor: .red)
                    
                    SettingCell(iconName: "button.vertical.left.press", cellName: "집중 모드", iconColor: .blue)
                    
                    SettingCell(iconName: "hourglass", cellName: "스크린 타임", iconColor: .indigo)
                } // Section
                
                // 일반
                Section {
                    SettingCell(iconName: "gear", cellName: "일반", iconColor: .gray)
                    
                    SettingCell(iconName: "gear", cellName: "제어 센터", iconColor: .gray)
                    
                    SettingCell(iconName: "button.vertical.left.press", cellName: "듕작 버튼", iconColor: .blue)
                    
                    SettingCell(iconName: "accessibility", cellName: "디스플레이 및 밝기", iconColor: .blue)
                    
                    SettingCell(iconName: "accessibility", cellName: "홈 화면 및 앱 보관함", iconColor: .blue)
                    
                    SettingCell(iconName: "accessibility", cellName: "손쉬운 사용", iconColor: .blue)
                    
                    SettingCell(iconName: "accessibility", cellName: "배경화면", iconColor: .blue)
                    
                    SettingCell(iconName: "accessibility", cellName: "스탠바이", iconColor: .blue)
                    
                    SettingCell(iconName: "magnifyingglass", cellName: "Siri 및 검색", iconColor: .indigo)
                    
                    SettingCell(iconName: "magnifyingglass", cellName: "Face ID 및 암호", iconColor: .indigo)
                    
                    SettingCell(iconName: "heart.fill", cellName: "긴급 구조 요청", iconColor: .red.opacity(0.5))
                    
                    SettingCell(iconName: "heart.fill", cellName: "노출 알림", iconColor: .red.opacity(0.5))
                    
                    SettingCell(iconName: "heart.fill", cellName: "배터리", iconColor: .red.opacity(0.5))
                    
                    SettingCell(iconName: "hand.raised", cellName: "개인정보 보호 및 보안", iconColor: .blue)
                    
                } // Section
                
                Section {
                    SettingCell(iconName: "key.fill", cellName: "암호", iconColor: .gray)
                } // Section
                
                Section {
                    SettingCell(iconName: "safari", cellName: "Safari", iconColor: .blue)

                    SettingCell(iconName: "newspaper", cellName: "News", iconColor: .red)
                    
                    SettingCell(iconName: "transmission", cellName: "번역", iconColor: .gray.opacity(0.7))
                    
                    SettingCell(iconName: "map", cellName: "지도", iconColor: .green.opacity(0.8))

                    SettingCell(iconName: "square.stack.3d.up", cellName: "단축어", iconColor: .indigo)
                    
                    SettingCell(iconName: "heart.fill", cellName: "건강", iconColor: .red.opacity(0.5))
                    

                    SettingCell(iconName: "photo", cellName: "사진", iconColor: .gray.opacity(0.7))
                    
                    SettingCell(iconName: "gamecontroller", cellName: "Game Center", iconColor: .gray.opacity(0.7))
                } // Section
                Section{}
                Section {
                    SettingCell(iconName: "hammer.fill", cellName: "개발자", iconColor: .gray)
                } // Section
            } // List
            .navigationTitle(Text("설정"))
        } // NavigationView
        .searchable(
          text: $searchQueryString,
          placement: .navigationBarDrawer,
          prompt: "검색"
        )
        
    }
    
}

#Preview {
    ContentView()
}
