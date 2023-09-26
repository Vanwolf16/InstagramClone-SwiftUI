//
//  FeedViewModel.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/25/23.
//

import Foundation
import Firebase

class FeedViewModel:ObservableObject{
    @Published var posts = [Post]()
    
    init(){
        Task{ try await fetchPosts() }
    }
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
    
}
