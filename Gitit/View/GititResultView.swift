//
//  GititResultView.swift
//  Gitit
//
//  Created by Zoé Hartman on 27/09/2022.
//

import SwiftUI

struct GititResultView: View {
    
    //#todo date format + clip avatar
    @State var userReq: String
    @State private var reqResult = Profile(
        login: "", avatar_url: "", html_url: "", name:"", public_repos: 0)
    
    var body: some View {
        ScrollView {
            VStack{
                TextField("Search by username...", text: $userReq)
                    .padding(10)
                    .fixedSize()
                    .border(.purple)
                    .onSubmit {
                        Task{
                            reqResult = try await getPublicGit(username: userReq)
                        }
                    }
                VStack{
                    Text("User").font(.title)
                    Text(reqResult.name ?? "User not found.")
                    Text(reqResult.login ?? "Error")
                    AsyncImage(
                        url: URL(string: reqResult.avatar_url ?? "ava_placeholder"),                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 300, maxHeight: 300)
                                //CAPSULE CLIP
                        },
                        placeholder: {
                            ProgressView()
                        })
                        .frame(maxWidth: 300, maxHeight: 100)

                    Text(reqResult.html_url ?? "No link to profile found.")
                    Text("Public repositories : "+String(reqResult.public_repos ?? 0))
//                    Text(reqResult.created_at?.formatted())
                }
            }
        }
    }
}

struct GititResultView_Previews: PreviewProvider {
    static var previews: some View {
        GititResultView(userReq: "")
    }
}
