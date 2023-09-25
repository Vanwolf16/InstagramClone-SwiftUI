//
//  ProfileHeaderView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/18/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user:User
    
    @State private var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10){
            //header
            VStack{
                //pics and stats
                HStack{
                    CircularProfileImageView(user: user, size: .large)
                    
                    Spacer()
                    
                    HStack(spacing: 10) {
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 5, title: "Followers")
                            .frame(width: 76)
                        UserStatView(value: 10, title: "Following")
                    }
                    
                    
                }.padding(.horizontal)
                
                
                // name and bio
                VStack(alignment: .leading,spacing: 4){
                    
                    
                    if let fullname = user.fullname{
                        Text(fullname)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    if let bio = user.bio{
                        Text(bio).font(.footnote)
                    }
                    
                    Text(user.username)
                    
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal)
                
                //action button
                Button {
                    if user.isCurrentUser{
                        showEditProfile.toggle()
                    }else{
                        print("Follow the user")
                    }
                } label: {
                    Text(user.isCurrentUser ? "Edit Profile": "Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 32)
                        .background(user.isCurrentUser ? .white : Color(.systemBlue))
                        .foregroundColor(user.isCurrentUser ? .black : .white)
                        .cornerRadius(6)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
                }
                
                
                Divider()
            }
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
            
            
        }//header Vstack
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[0])
    }
}
