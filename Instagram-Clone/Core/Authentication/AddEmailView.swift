//
//  AddEmailView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/15/23.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack(spacing: 12){
            Text("Add your email").font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            TextField("Email...", text: $email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            
            NavigationLink {
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                Text("Next").font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }.padding(.vertical)

            
            
            
                
            Spacer()
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.left").imageScale(.large)
                            .onTapGesture {
                                dismiss()
                            }
                    }
                }
            
        }
        
        
    }//end of body view
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
