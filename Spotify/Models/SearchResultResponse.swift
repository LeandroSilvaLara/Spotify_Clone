//
//  SearchResultResponse.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

struct SearchResultResponse:Codable{
    let albums:SearchAlbumResponse
    let artists: SearchArtistResponse
    let playlists:SearchPlaylistResponse
    let tracks: SearchTracksResponse
}


struct SearchAlbumResponse:Codable{
    let items:[Album]
}

struct SearchPlaylistResponse:Codable{
    let items:[PlayList]
}
struct SearchArtistResponse:Codable{
    let items:[Artist]
}
struct SearchTracksResponse:Codable{
    let items:[AudioTracks]
}
