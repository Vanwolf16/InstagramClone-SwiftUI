//
//  CurrentUserProfileView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/18/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user:User
    
    var posts: [Post]{
       return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
   }
    
    var body: some View {
        
        NavigationStack {
            ScrollView{
               //Header View
                ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(posts: posts)
                
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
        
        
    }//end of navigationStackView
    
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
