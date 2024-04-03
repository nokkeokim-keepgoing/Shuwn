//
//  ControlCenter.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/19/24.
//

import SwiftUI

struct ControlCenterDetail: View {
    @ObservedObject var settingEnvironmentData: SettingEnvironmentData = SettingEnvironmentData()
    
    @ObservedObject var controlCenterVM: ControlCenterViewModel = ControlCenterViewModel()
    @State private var editMode: EditMode = .active
    
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
                    Text("앱 내에서 제어 센터에 접근할 수 있도록 허용합니다. 비활성화된 상태에서도 홈 화면에서 제어 센터에 접근할 수 있습니다.")
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
                    ForEach(controlCenterVM.includedControlCenterItemList, id: \.name) { item in
                        ControlDetailRow(controlCenterItem: item)
                    }
                    .onMove(perform: { indices, newOffset in
                        controlCenterVM.moveItem(from: indices, to: newOffset)
                    })
                    .onDelete(perform: { indexSet in
                        controlCenterVM.removeItem(at: indexSet)
                    })
                } header: {
                    Text("제어 센터에 포함된 항목")
                        .font(.caption)
                        .padding([.top], 44)
                }
                
                // 제어 항목 추가
                Section {
                    ForEach(controlCenterVM.excludedControlCenterItemList, id: \.name) { item in
                        ControlDetailRow(controlCenterItem: item)
                            .onTapGesture {
                                controlCenterVM.includeItem(item: item)
                            }
                    }
                } header: {
                    Text("제어 항목 추가")
                        .font(.caption)
                }
                
                
            } // List
        } // VStack
        .navigationTitle("제어 센터")
        .navigationBarTitleDisplayMode(.inline)
        .environment(\.editMode, $editMode)
    }


}

struct ControlDetailRow: View {
    var controlCenterItem: ControlCenterItem
    @ObservedObject var controlCenterVM: ControlCenterViewModel = ControlCenterViewModel()
    

    var body: some View {
        HStack {
            // 제어 항목 추가 버튼
            if !controlCenterItem.isIncluded {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22, height: 22)
                .foregroundStyle(.green)
                .padding([.trailing], 10)
            }
            
            Label {
                HStack {
                    Text(controlCenterItem.name)
                    
                    Spacer()
                }
            } icon: {
                IconView(name: controlCenterItem.iconName, backgroundColor: controlCenterItem.iconBackgroundColor)
            } // Label
        } // HStack
    }
    
}
#Preview {
    ControlCenterDetail().environmentObject(SettingEnvironmentData())
}
