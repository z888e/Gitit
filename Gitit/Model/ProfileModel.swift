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
    var html_url: String?
    var name:String?
    var public_repos: Int?
//    var created_at:Date?
//    var updated_at:Date?

    init(login: String? = nil,
        avatar_url: String? = nil,
        html_url: String? = nil,
        name:String? = nil,
         public_repos: Int? = nil
//         created_at:Date? = nil,
//         updated_at:Date? = nil
    ){
        
        self.login = login
        self.avatar_url = avatar_url
        self.html_url = html_url
        self.name = name
        self.public_repos = public_repos
//        self.created_at = created_at
//        self.updated_at = updated_at
    }
}
