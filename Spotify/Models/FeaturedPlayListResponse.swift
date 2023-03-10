//
//  FeaturedPlayListResponse.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

struct FeaturedPlayListResponse : Codable{
    
    let playlists: PlayListResponse
}
struct CategoryPlayListResponse : Codable{
    
    let playlists: PlayListResponse
}
struct PlayListResponse:Codable{
    let items: [PlayList]
    
}


struct User:Codable{
    
    let display_name:String
    let external_urls: [String:String]
    let id:String
    
}
