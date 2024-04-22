//
//  PlaylistHeaderCell.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 23.04.2024.
//

import SwiftUI

struct PlaylistHeaderCell: View {
    
    var height: CGFloat = 300
    var title : String = "Some title"
    var subTitle : String = "Some subtitle"
    var imageName : String = Constants.randomImage
    var shadowColor : Color = .spotifyBlack.opacity(0.9)
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay(
                ImageLoaderView(urlString: imageName)
            )
            .overlay(
                VStack(alignment: .leading, spacing: 8){
                    Text(subTitle)
                        .font(.headline)
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .foregroundColor(.spotifyWhite)
                .padding(16)
                .frame(maxWidth : .infinity, alignment: .leading)
                .background(
                    LinearGradient(colors: [shadowColor.opacity(0), shadowColor], startPoint: .top, endPoint: .bottom)
                )
                //.background(Color.red)
                , alignment: .bottomLeading
                
            )
            .asStretchyHeader(startingHeight: height)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ScrollView{
            PlaylistHeaderCell()
        }
        .ignoresSafeArea()
       
    }
}
