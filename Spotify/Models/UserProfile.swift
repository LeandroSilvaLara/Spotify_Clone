//
//  UserProfile.swift
//  Spotify
//
//  Created by Leandro Lara on 31/01/23.
//

import Foundation

struct UserProfile:Codable{
    
    let country: String
    let display_name: String
    let email: String
    let explicit_content : [String:Bool]
    let external_urls: [String:String]
    let href: String
    let id: String
    let product: String
    let images: [ApiImage]

}

