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
    
    var body: some View{
        Image(systemName: name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 18, height: 18)
            .padding(5)
            .background(backgroundColor)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    IconView(name: "person", backgroundColor: .gray)
}
