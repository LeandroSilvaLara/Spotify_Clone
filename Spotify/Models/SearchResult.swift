//
//  SearchResult.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

enum SearchResult {
    
    case artist(model:Artist)
    case album(model:Album)
    case playlist(model:PlayList)
    case track(model:AudioTracks)
    
    
}
