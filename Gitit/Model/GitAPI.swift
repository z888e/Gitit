//
//  GitAPI.swift
//  Gitit
//
//  Created by Zoé Hartman on 27/09/2022.
//

import Foundation

func getPublicGit(username:String) async throws -> Profile {
    guard let url = URL(string: "https://api.github.com/users/" + username)
    else {
        fatalError("Missing URL")
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "GET"
    let (data, response) = try await URLSession.shared.data(for: urlRequest)
    guard (response as? HTTPURLResponse)?.statusCode == 200
    else {
        fatalError("Error while fetching data")
    }
    let decoded = try JSONDecoder().decode(Profile.self, from: data)
//    let result : Profile = decoded.self
    return decoded
}
