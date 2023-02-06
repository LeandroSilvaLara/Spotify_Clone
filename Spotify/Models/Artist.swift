//
//  Artist.swift
//  Spotify
//
//  Created by Leandro Lara on 31/01/23.
//

import Foundation

struct Artist:Codable{
    let external_urls: [String:String]
    let id:String
    let name:String
    let type:String
    let images:[ApiImage]?
    
}
