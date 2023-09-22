//
//  RegistrationViewModel.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/21/23.
//

import Foundation

class RegistrationViewModel:ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
    
}
