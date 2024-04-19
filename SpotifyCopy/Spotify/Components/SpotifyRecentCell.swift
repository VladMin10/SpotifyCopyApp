//
//  SpotifyRecentCell.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 18.04.2024.
//

import SwiftUI

struct SpotifyRecentCell: View {
    
    var imageName : String = Constants.randomImage
    var title : String = "Some random title"
    
    var body: some View {
        HStack {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .padding(.trailing,8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected : false)
        .cornerRadius(6.0)
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        
        VStack{
            HStack{
                SpotifyRecentCell()
                SpotifyRecentCell()
            }
            HStack{
                SpotifyRecentCell()
                SpotifyRecentCell()
            }
        }
    }
}
