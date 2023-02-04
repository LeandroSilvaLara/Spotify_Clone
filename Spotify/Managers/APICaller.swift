//
//  APICaller.swift
//  Spotify
//
//  Created by Leandro Lara on 31/01/23.
//

import Foundation


final class APICaller {
    static let shared = APICaller()
    struct Constants {
        static let baseApiUrl = "https://api.spotify.com/v1"
    }
    
    
    enum httpMethod: String{
        case GET
        case POST
    }
    
    enum APiError: Error {
        case failedTogetData
    }
    
    private init(){}
}
