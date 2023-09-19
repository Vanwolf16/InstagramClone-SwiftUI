//
//  CompleteSignUpView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/15/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
       
        VStack(spacing: 12){
            Text("Welcome to Instagram, John Doe").font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            Button {
                print("Complete Sign Up")
            } label: {
                Text("Complete Sign Up").font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }.padding(.vertical)

            
            
            
            
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.left").imageScale(.large)
                            .onTapGesture {
                                dismiss()
                            }
                    }
                }
            
        }
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
