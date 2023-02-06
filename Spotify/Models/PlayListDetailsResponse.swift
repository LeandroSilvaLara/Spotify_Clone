//
//  PlayListDetailsResponse.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

struct PlayListDetailsResponse:Codable{
    
    let description:String
    let external_urls:[String:String]
    let id :String
    let images:[ApiImage]
    let name:String
    let tracks: PlayListTrackResponse
    
}
struct PlayListTrackResponse:Codable{
    
    let items:[playListItem]
}
struct playListItem:Codable{
    let track:AudioTracks
}
