//
//  AuthManager.swift
//  Spotify
//
//  Created by Leandro Lara on 31/01/23.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "3d24705d7738411b9e97bafcc69b73f9"
        static let clientSecret = "48195c982acd4da7a8cb853eadb96a72"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    private var refreshToken: String? {
        return nil
    }
    private var tokenExpirationDate: Date? {
        return nil
    }
    private var shouldRefreshToken: Bool? {
        return false
    }
}
