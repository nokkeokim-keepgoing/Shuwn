//
//  ControlCenterViewModel.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 4/2/24.
//

import SwiftUI

class ControlCenterViewModel: ObservableObject {
    @Published var includedControlCenterItemList: [ControlCenterItem] = [
        .init(name: "다크 모드", iconName: "flashlight.off.fill", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "손전등", iconName: "flashlight.off.fill", iconBackgroundColor: .blue, isIncluded: true),
        .init(name: "타이머", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: true),
        .init(name: "알람", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: true),
        .init(name: "화면 미러링", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: true),
        .init(name: "음악 인식", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: true)
    ]
    
    @Published var excludedControlCenterItemList: [ControlCenterItem] = [
        .init(name: "계산기", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: false),
        .init(name: "손전등", iconName: "flashlight.off.fill", iconBackgroundColor: .blue, isIncluded: true),
        .init(name: "화면 미러링", iconName: "flashlight.off.fill", iconBackgroundColor: .gray, isIncluded: true),
        .init(name: "타이머", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: true),
        .init(name: "음악 인식", iconName: "flashlight.off.fill", iconBackgroundColor: .blue, isIncluded: true),
        .init(name: "저전력 모드", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: false),
        .init(name: "알람", iconName: "flashlight.off.fill", iconBackgroundColor: .orange, isIncluded: true),
        .init(name: "화면 기록", iconName: "flashlight.off.fill", iconBackgroundColor: .red, isIncluded: false),
        .init(name: "듣기 지원", iconName: "flashlight.off.fill", iconBackgroundColor: .blue, isIncluded: false),
        .init(name: "다크 모드", iconName: "flashlight.off.fill", iconBackgroundColor: .black, isIncluded: true),
        
    ]
    
    // 제어 센터에 추가
    func includeItem(item: ControlCenterItem) {
        if let index = excludedControlCenterItemList.firstIndex(where: { controlCenterItem in
            item.name == controlCenterItem.name
        }) {
            withAnimation {
                // 안 보이게
                excludedControlCenterItemList[index].isIncluded = true
                includedControlCenterItemList.append(excludedControlCenterItemList[index])
            }
        }
    }

    // 포함된 아이템 순서 변경
    func moveItem(from source: IndexSet, to destination: Int) {
        includedControlCenterItemList.move(fromOffsets: source, toOffset: destination)
    }
    
    // 제어 센터에서 제거
    func removeItem(at indexSet: IndexSet) {
        for index in indexSet {
            withAnimation {
                if let index = excludedControlCenterItemList.firstIndex(where: { item in
                    item.name == includedControlCenterItemList[index].name
                }) {
                    // 밑에서 보이게
                    excludedControlCenterItemList[index].isIncluded = false
                }
                // 위에서 제거
                includedControlCenterItemList.remove(atOffsets: indexSet)
            }
        } // for
    }
}
