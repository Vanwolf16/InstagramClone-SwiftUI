//
//  ProfileHeaderView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/18/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user:User
    
    var body: some View {
        VStack(spacing: 10){
            //header
            VStack{
                //pics and stats
                HStack{
                    Image(user.profileImageUrl ?? "")
                        .resizable().scaledToFill()
                        .frame(width: 80,height: 80)
                        .clipShape(Circle())
                    
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
                    Text(user.username).font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text(user.fullname ?? "").font(.footnote)
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal)
                
                //action button
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
                }
                
                
                Divider()
            }
            
            
            
        }//header Vstack
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[0])
    }
}
