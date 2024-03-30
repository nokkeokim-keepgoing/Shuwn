//
//  ControlCenter.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/19/24.
//

import SwiftUI

// 월요일에 마저 하겠습니다. . . .. .캠핑 다녀올게요 , ,, , , , ,, , ,,
struct ControlCenterDetail: View {
    @ObservedObject var settingEnvironmentData: SettingEnvironmentData = SettingEnvironmentData()
    
    @State var controlCenterItemList: [ControlCenterItem] = [
        .init(name: "다크 모드", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "화면 미러링", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "음악 인식", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "저전력 모드", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "화면 기록", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "음성 메모", iconName: "person", iconBackgroundColor: .black, isIncluded: false),
        .init(name: "Apple TV 리모컨", iconName: "setting", iconBackgroundColor: .black, isIncluded: false)
    ]
    var selectedItems: [ControlCenterItem] {
        controlCenterItemList.filter { item in
            return item.isIncluded
        }
    }
    var unSelectedItems: [ControlCenterItem] {
        controlCenterItemList.filter { item in
            return !item.isIncluded
        }
    }
    
    var body: some View {
        VStack {
            List {
                // 앱 내 접근
                Section {
                    Toggle("앱 내 접근", isOn: $settingEnvironmentData.isInAppAccessEnabled)
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
                    Toggle("홈 제어 보기", isOn: $settingEnvironmentData.isHomeControlVisible)
                } footer: {
                    Text("홈 액세서리 및 모드에 대한 제어 추천 사항을 포함합니다.")
                        .font(.caption)
                }
                
                // 제어 센터에 포함된 항목
                Section {
                    ForEach(selectedItems, id: \.name) { item in
                        ControlDetailRow(controlCenterItem: item)
                    }
                } header: {
                    Text("제어 센터에 포함된 항목")
                        .font(.caption)
                        .padding([.top], 44)
                }
                
                // 제어 항목 추가
                Section {
                    ForEach(unSelectedItems, id: \.name) { item in
                        ControlDetailRow(controlCenterItem: item)
                    }
                } header: {
                    Text("제어 항목 추가")
                        .font(.caption)
                }
                
                
            } // List
        } // VStack
        .navigationTitle("제어 센터")
        .navigationBarTitleDisplayMode(.inline)
    }


}

struct ControlDetailRow: View {
    var controlCenterItem: ControlCenterItem
    
    var body: some View {
        HStack {
            if controlCenterItem.isIncluded {
            Image(systemName: "minus.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundStyle(.white)
                .background(.red)
                .clipShape(Circle())
                
            } else {
                Image(systemName: "plus.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .background(.green)
                    .foregroundStyle(.white)
                    .clipShape(Circle())
            }
            
            Label {
                HStack {
                    Text(controlCenterItem.name)
                    
                    Spacer()
                    
                    if controlCenterItem.isIncluded {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.gray.opacity(0.5))
                    }
                }
                .onTapGesture {
                }
            } icon: {
                IconView(name: controlCenterItem.iconName, backgroundColor: controlCenterItem.iconBackgroundColor)
            } // Label
        } // HStack
        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
             Button {
                // 제거
             } label: {
                 Text("제거")
             }
                 .tint(.red)
         }
    }
    
}
#Preview {
    ControlCenterDetail().environmentObject(SettingEnvironmentData())
}
