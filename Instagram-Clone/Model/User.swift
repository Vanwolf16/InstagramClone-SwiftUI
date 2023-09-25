//
//  User.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/18/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable ,Codable{
    let id: String
    var username:String
    var profileImageUrl:String?
    var fullname:String?
    var bio:String?
    let email:String
    
    var isCurrentUser:Bool{
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
    
}

extension User{
    static var MOCK_USERS:[User] = [
        .init(id: NSUUID().uuidString, username: "batman",profileImageUrl: "Batman",fullname: "Bruce Wayne",bio: "gotham city", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "joker",profileImageUrl: "Joker",fullname: "What name?",bio: "gotham city", email: "joker@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman",profileImageUrl: "Spiderman",fullname: "Peter Parker",bio: "New York baby", email: "spiderman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom",profileImageUrl: "Venom",fullname: "Eddie Brock",bio: "Alien City", email: "venom@gmail.com"),
    ]
}
