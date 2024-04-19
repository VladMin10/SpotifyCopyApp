//
//  SpotifyNewReleaseCell.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 18.04.2024.
//

import SwiftUI

struct SpotifyNewReleaseCell: View {
    
    var imageName : String = Constants.randomImage
    var headline : String? = "New release from"
    var subheadline : String? = "Some Artist"
    var title:String? = "Some Playlist"
    var subtitle: String? = "Single - title"
    var onAddToPlaylistPressed : (() -> Void)? = nil
    var onPlayPressed : (() -> Void)? = nil
    
    var body: some View {
        VStack( spacing : 16){
            HStack( spacing : 8){
                ImageLoaderView(urlString: imageName)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment : .leading , spacing : 2){
                    if let headline {
                        Text(headline)
                            .foregroundStyle(.spotifyLightGrey)
                            .font(.callout)
                    }
                    
                    if let subheadline {
                        Text(subheadline)
                            .foregroundStyle(.spotifyWhite)
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                }
            }
            .frame(maxWidth : .infinity, alignment: .leading)
            
            HStack{
                ImageLoaderView(urlString: imageName)
                    .frame(width: 140, height: 140)
                
                VStack(alignment : .leading , spacing : 32){
                    VStack(alignment : .leading , spacing : 2){
                        if let title {
                            Text(title)
                                .foregroundStyle(.spotifyWhite)
                    
                        }
                        
                        if let subtitle {
                            Text(subtitle)
                                .foregroundStyle(.spotifyLightGrey)
                                
                        }
                    }
                    .font(.callout)
                    
                    HStack{
                        Image(systemName: "plus.circle")
                            .foregroundColor(.spotifyLightGrey)
                            .font(.title3)
                            .onTapGesture {
                                onAddToPlaylistPressed?()
                            }
                            .offset(x: -4)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(.spotifyWhite)
                            .font(.title)
                            
                    }
                }
                .padding(.trailing, 16)
            }
            .themeColors(isSelected: false)
            .cornerRadius(8)
            .onTapGesture {
                onPlayPressed?()
            }
        }
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        SpotifyNewReleaseCell()
            .padding()
    }
}
