//
//  AuthResponse.swift
//  Spotify
//
//  Created by Leandro Lara on 01/02/23.
//

import Foundation

struct AuthReponse: Codable {
    let access_token: String
    let experies_in: Int
    let refresh_token: String
    let scope: String
    let token_type: String
}
