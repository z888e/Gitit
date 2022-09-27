//
//  ProfileModel.swift
//  Gitit
//
//  Created by Zoé Hartman on 27/09/2022.
//

import Foundation

struct Profile: Decodable {
    var login : String?
    var avatar_url: String?
    
    init(login: String? = nil,
         avatar_url: String? = nil) {
        
        self.login = login
        self.avatar_url = avatar_url
    }
}

