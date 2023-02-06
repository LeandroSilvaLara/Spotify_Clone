//
//  AudioTracks.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

struct AudioTracks:Codable{
    
    var album: Album?
    let artists:[Artist]
    let available_markets:[String]
    let disc_number:Int
    let duration_ms:Int
    let explicit:Bool
    let external_urls:[String:String]
    let id:String
    let name:String
    let preview_url:String?
    

}
