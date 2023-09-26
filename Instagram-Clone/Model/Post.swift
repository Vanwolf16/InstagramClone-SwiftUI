//
//  Post.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/18/23.
//

import Foundation
import Firebase

struct Post: Identifiable,Hashable,Codable{
    let id:String
    let ownerUid:String
    let caption: String
    var likes:Int
    let imageUrl:String
    let timestamp:Timestamp
    var user:User?
}

extension Post{
    static var MOCK_POSTS:[Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is a caption for posting", likes: 12, imageUrl: "Batman", timestamp:Timestamp(date: Date()) ,user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is a caption for posting", likes: 12, imageUrl: "Spiderman", timestamp: Timestamp(date: Date()),user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is a caption for posting", likes: 12, imageUrl: "Spiderman", timestamp: Timestamp(date: Date()),user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is a caption for posting", likes: 12, imageUrl: "Spiderman", timestamp: Timestamp(date: Date()),user: User.MOCK_USERS[3]),
        
    ]
}
