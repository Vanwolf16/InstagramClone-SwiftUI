//
//  SearchView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/14/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        
        
        NavigationStack {
            
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            HStack {
                                CircularProfileImageView(user: user, size: .small)
                                
                                VStack(alignment: .leading){
                                    Text(user.username).fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname{
                                        Text(fullname)
                                    }
                                    
                                    
                                }.font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        }
                    }
                    .padding(.top,8)
                    .searchable(text: $searchText,prompt: "Search...")
                }//end of lazystack
                
            }//end of scrollview
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }//end of body
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
