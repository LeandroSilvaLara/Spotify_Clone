//
//  CategoryResponse.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation


struct CategoryResponse:Codable {
    
    let categories:categories
    
}

struct categories :Codable{
    let items:[Category]
}

struct Category:Codable{
 
    let href:String
    let icons:[ApiImage]
    let id:String
    let name:String
    
}
