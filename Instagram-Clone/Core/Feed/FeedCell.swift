//
//  FeedCell.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/14/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            //image + username
            HStack{
                Image("blackpanther")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40,height: 40)
                    .clipShape(Circle())
                Text("black panther")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }.padding(.leading,8)
            
            //post image
            Image("blackpanther")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //actions button
            HStack(spacing: 16){
                Button {
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment Post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()

            }.padding(.leading,8).padding(.top,2).foregroundColor(.black)
            
            //like label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading, 10)
                .padding(.top,8)
            //caption
            HStack{
                Text("blackpanther ").fontWeight(.semibold) +
                Text("This is some test caption for now this is some more words")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top,1)
            
            
            Text("6h")
                .font(.footnote)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
