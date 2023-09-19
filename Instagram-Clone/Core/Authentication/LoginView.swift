//
//  LoginView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/15/23.
//

import SwiftUI

struct LoginView: View {
    
    //Properties
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                //logo image
                Image("Instagram_Logo_Black")
                    .resizable()
                    .frame(width: 150,height: 50)
                    .scaledToFit()
                    
                //text fields
                VStack{
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password).autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                }
                
                //Forgot Button
                Button {
                    print("Show forgot password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }.frame(maxWidth: .infinity,alignment: .trailing)
                
                Button {
                    
                        
                } label: {
                    Text("Login").font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }.padding(.vertical)

                
                //Line
                HStack{
                    Rectangle().frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5).foregroundColor(.gray)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Rectangle().frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5).foregroundColor(.gray)
                }
                
                HStack{
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }.padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView().navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }.font(.footnote)
                }
                .padding(.vertical,16)

                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
