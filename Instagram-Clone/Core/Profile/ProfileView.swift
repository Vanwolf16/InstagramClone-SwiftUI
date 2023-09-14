//
//  ProfileView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/13/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView{
                VStack(spacing: 10){
                    //header
                    VStack{
                        //pics and stats
                        HStack{
                            Image("blackpanther")
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
                            Text("Chadwick Bozeman").font(.footnote)
                                .fontWeight(.semibold)
                            Text("Wakanda Forever").font(.footnote)
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
                    
                    //post grid view
                    LazyVGrid(columns: gridItems,spacing: 1) {
                        ForEach(0...15, id: \.self) {index in
                            Image("blackpanther").resizable()
                                .scaledToFill()
                        }
                    }
                    
                }//header Vstack
                
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
        
        
    }//end of navigationStackVie
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}