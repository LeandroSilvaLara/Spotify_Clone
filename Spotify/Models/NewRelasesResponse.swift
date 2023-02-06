//
//  NewRelasesResponse.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

struct NewRelasesResponse:Codable {
    let albums : AlbumsPesponse
}
struct AlbumsPesponse: Codable{
    let items: [Album]
}
struct Album:Codable{
    
    
    let album_type:String
    let available_markets:[String]
    let name:String
    let artists: [Artist]
    let id:String
    var images:[ApiImage]
    let release_date:String
    let total_tracks:Int
}
