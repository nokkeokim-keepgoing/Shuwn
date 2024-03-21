//
//  IconView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct IconView: View{
    var name: String
    var backgroundColor: Color
    var isProfile: Bool
    
    var body: some View{
        Image(systemName: name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: isProfile ? 40 : 18, height: isProfile ? 40 : 18)
            .padding(isProfile ? 10 : 5)
            .background(backgroundColor)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: isProfile ? 100 : 5))
    }
}

#Preview {
    IconView(name: "person", backgroundColor: .gray, isProfile: true)
}
