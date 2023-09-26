//
//  ProfileView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/13/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user:User
    
    
     var posts: [Post]{
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
        
        
        ScrollView{
            //Header View
            ProfileHeaderView(user: user)
            
            //post grid view
            PostGridView(user: user)
        }//end of ScrollView
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
        }
            
    }
        
        
   
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
