//
//  SpotifyCategoryCell.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 17.04.2024.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title : String = "Music"
    var isSelected : Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .themeColors(isSelected : isSelected)
            .cornerRadius(16)
    }
}

extension View{
    
    func themeColors(isSelected : Bool) -> some View{
        self
            .background(isSelected ? .spotifyGreen : .spotifyDarkGrey)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack {
            SpotifyCategoryCell()
            SpotifyCategoryCell(isSelected: true)
            SpotifyCategoryCell()
        }
    }
}
