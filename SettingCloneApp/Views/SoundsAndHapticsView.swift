//
//  SoundsAndHapticsView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/24/24.
//

import SwiftUI

struct SoundsAndHapticsView: View {
    @State private var isSilentMode: Bool = true
    @State private var showInStatusBar: Bool = true
    @State private var changeWithButtons: Bool = true
    @State private var volume: Double = 50.0
    var body: some View {
        List {
            // 무음 모드
            Section {
                Label {
                    Toggle("무음 모드", isOn: $isSilentMode)
                } icon: {
                    Image(systemName: isSilentMode ? "bell.slash.fill" : "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(isSilentMode ? .red : .gray)
                        .frame(width: 18, height: 18)
                }
                
            } header: {
                Text("무음 모드")
            } footer: {
                Text("iPhone이 벨소리, 알림 및 시스템 사운드를 재생합니다.")
                    .font(.caption)
            }
            
            // 상태 막대에서 보기
            Section {
                Toggle("상태 막대에서 보기", isOn: $showInStatusBar)
            }
            
            // 벨소리 및 알림
            Section {
                Slider(value: $volume, in: 0...100, minimumValueLabel: Image(systemName: "speaker.fill").foregroundStyle(.gray), maximumValueLabel: Image(systemName: "speaker.wave.3.fill").foregroundStyle(.gray)){
                    Text("볼륨")
                } // Slider
                
                Toggle("버튼을 사용하여 변경", isOn: $changeWithButtons)
                
                NavigationLink(value: "햅틱") {
                    HStack {
                        Text("햅틱")
                        Spacer()
                        Text("항상 재생")
                            .foregroundStyle(.gray)
                    }
                }
            } header: {
                Text("벨소리 및 알림")
            } footer: {
                Text("음량 버튼으로 벨소리 및 알림 음량을 조절할 수 없습니다.")
                    .font(.caption)
            }
            
            
            Section {
                DetailCell(detailCellData: DetailCellData(title: "벨소리", subTitle: "반향"))
                DetailCell(detailCellData: DetailCellData(title: "음성 메시지 수신", subTitle: "물방울"))
                DetailCell(detailCellData: DetailCellData(title: "메일 수신", subTitle: "없음"))
                DetailCell(detailCellData: DetailCellData(title: "메일 발신", subTitle: "휙 소리"))
                DetailCell(detailCellData: DetailCellData(title: "캘린더 알림", subTitle: "화음"))
                DetailCell(detailCellData: DetailCellData(title: "미리 알림", subTitle: "화음"))
            }
            
        } // List
        .navigationTitle("사운드 및 햅틱")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailCellData: Hashable {
    var title: String
    var subTitle: String?
}

@ViewBuilder
func DetailCell(detailCellData: DetailCellData) -> some View {
    NavigationLink(value: detailCellData) {
        HStack {
            Text(detailCellData.title)
                .foregroundStyle(.black)
            if let subTitle = detailCellData.subTitle {
                Spacer()
                Text(subTitle)
                    .foregroundStyle(.gray)
            }
            
        }
    }
}

#Preview {
    SoundsAndHapticsView()
}
