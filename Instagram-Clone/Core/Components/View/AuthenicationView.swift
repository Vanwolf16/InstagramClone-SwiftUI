//
//  AuthenicationView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/15/23.
//

import SwiftUI

struct AuthenicationView: View {
    
    
    //inits
    let textfieldPrompt:String = ""
    
    var body: some View {
        VStack(spacing: 12){
            Text("Add your \(textfieldPrompt)").font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
                
                
            
            Button {
                print("Login")
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
                                
                            }
                    }
                }
            
        }
    }
}

struct AuthenicationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenicationView()
    }
}
