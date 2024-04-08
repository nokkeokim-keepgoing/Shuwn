//
//  ControlCenter.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/19/24.
//

import SwiftUI

struct ControlCenterView: View {
    @EnvironmentObject var settingEnvironmentData: SettingEnvironmentData
    @EnvironmentObject var controlCenterVM: ControlCenterViewModel
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
                    ForEach(controlCenterVM.includedControlCenterItemList) { item in
                        ControlDetailRow(item: item, controlCenterViewModel: controlCenterVM)
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
                    ForEach(controlCenterVM.excludedControlCenterItemList.filter({ item in
                        !item.isIncluded
                    })) { item in
                        ControlDetailRow(item: item, controlCenterViewModel: controlCenterVM)
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

@ViewBuilder
func ControlDetailRow(item: ControlCenterItem, controlCenterViewModel: ControlCenterViewModel) -> some View {
    
    HStack {
        // 제어 항목 추가 버튼
        if !item.isIncluded {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22, height: 22)
                .foregroundStyle(.green)
                .padding([.trailing], 10)
                .onTapGesture {
                    controlCenterViewModel.includeItem(item: item)
                }
        }
        
        Label {
            HStack {
                Text(item.name)
                
                Spacer()
            }
        } icon: {
            IconView(name: item.iconName, backgroundColor: item.iconBackgroundColor)
        } // Label
    } // HStack
    
}
#Preview {
    ControlCenterView().environmentObject(SettingEnvironmentData()).environmentObject(ControlCenterViewModel())
}
