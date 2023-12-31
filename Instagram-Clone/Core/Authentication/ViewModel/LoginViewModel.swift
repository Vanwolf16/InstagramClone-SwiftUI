//
//  LoginViewModel.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/21/23.
//

import Foundation

class LoginViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
