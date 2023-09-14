//
//  FeedView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/14/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0...19, id: \.self) { post in
                        FeedCell()
                    }
                }.padding(.top, 12)
                //End of LazyVStack
                
            }//end of scrollView
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("Instagram_Logo_Black")
                        .resizable()
                        .frame(width: 100,height: 32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }//End of NavigationStack
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
