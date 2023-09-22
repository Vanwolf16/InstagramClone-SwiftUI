//
//  ContentView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/13/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group{
            if viewModel.userSession == nil{
                LoginView()
                    .environmentObject(registrationViewModel)
            }else if let currentUser = viewModel.currentUser{
                MainTabView(user: currentUser)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
