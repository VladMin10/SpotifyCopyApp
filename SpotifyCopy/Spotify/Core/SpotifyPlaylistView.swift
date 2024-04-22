//
//  SpotifyPlaylistView.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 22.04.2024.
//

import SwiftUI

struct SpotifyPlaylistView: View {
    
    var product : Product = .mock
    var user : User = .mock
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical){
                LazyVStack (spacing : 12){
                    PlaylistHeaderCell(
                        height: 250,
                        title: product.title,
                        subTitle: product.brand,
                        imageName: product.thumbnail
                       )
                    
                    PlaylistDescriptionCell(
                        descriptionText: product.description,
                        userName: user.firstName,
                        subHeadline: product.category,
                        onAddToPlaylistPressed: nil,
                        onDownloadPressed: nil,
                        onSharePressed: nil,
                        onEllipsisPressed: nil,
                        onShufflePressed: nil,
                        onPlaylistPressed: nil
                    )
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    SpotifyPlaylistView()
}
