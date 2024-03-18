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
            List {
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
                
                Section {
                    SettingCell(iconName: "hourglass", cellName: "스크린 타임", iconColor: .indigo)

                    SettingCell(iconName: "button.vertical.left.press", cellName: "동작 버튼", iconColor: .blue)
                } // Section
                
                Section {
                    SettingCell(iconName: "gear", cellName: "일반", iconColor: .gray)

                    SettingCell(iconName: "accessibility", cellName: "손쉬운 사용", iconColor: .blue)
                    
                    SettingCell(iconName: "hand.raised", cellName: "개인정보 보호 및 보안", iconColor: .blue)
                    
                } // Section
                
                Section {
                    SettingCell(iconName: "key", cellName: "암호", iconColor: .gray)
                } // Section
                
                Section {
                    SettingCell(iconName: "safari", cellName: "Safari", iconColor: .blue)

                    SettingCell(iconName: "newspaper", cellName: "News", iconColor: .red)
                    
                    SettingCell(iconName: "transmission", cellName: "번역", iconColor: .gray.opacity(0.7))
                    
                    SettingCell(iconName: "map", cellName: "지도", iconColor: .green.opacity(0.8))

                    SettingCell(iconName: "square.stack.3d.up", cellName: "단축어", iconColor: .indigo)
                    
                    SettingCell(iconName: "heart.fill", cellName: "건강", iconColor: .red.opacity(0.5))
                    
                    SettingCell(iconName: "magnifyingglass", cellName: "Siri 및 검색", iconColor: .indigo)

                    SettingCell(iconName: "photo", cellName: "사진", iconColor: .gray.opacity(0.7))
                    
                    SettingCell(iconName: "gamecontroller", cellName: "Game Center", iconColor: .gray.opacity(0.7))
                } // Section
                Section{}
                Section {
                    SettingCell(iconName: "hammer.fill", cellName: "개발자", iconColor: .gray)
                } // Section
            } // List
            .navigationTitle(Text("설정"))
        }
    }
    
}

#Preview {
    ContentView()
}
