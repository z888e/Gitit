//
//  GititResultView.swift
//  Gitit
//
//  Created by Zoé Hartman on 27/09/2022.
//

import SwiftUI

struct GititResultView: View {
    
    @State var userReq: String
    @State private var reqResult = Profile(
        login: "", avatar_url: "")
    
    var body: some View {
        ScrollView {
            VStack{
                TextField("User", text: $userReq)
                    .onSubmit {
                        Task{
                            reqResult = try await getPublicGit(username: userReq)
                        }
                    }
                Text(reqResult.login ?? "Error getting username from GitHub.")
            }
        }
    }
}

struct GititResultView_Previews: PreviewProvider {
    static var previews: some View {
        GititResultView(userReq: "")
    }
}
