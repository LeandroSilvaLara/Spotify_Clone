//
//  SettingsModels.swift
//  Spotify
//
//  Created by Leandro Lara on 05/02/23.
//

import Foundation

struct Section{
    let title:String
    
    //the cells'buttons' inside sections
    let options:[Option]
}

struct Option{
    
    let title:String
    let handler: ()->Void
    
}
