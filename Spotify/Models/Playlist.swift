//
//  Playlist.swift
//  Spotify
//
//  Created by Leandro Lara on 31/01/23.
//

import Foundation

struct PlayList:Codable{
    let description:String
    let external_urls: [String:String]
    let id : String
    let images:[ApiImage]
    let name:String
    let owner:User
    
}
