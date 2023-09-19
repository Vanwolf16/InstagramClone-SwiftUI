//
//  UploadPostView.swift
//  Instagram-Clone
//
//  Created by David Murillo on 9/19/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresent = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex:Int
    
    var body: some View {
        VStack{
            //action tool bar
            HStack{
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                        .fontWeight(.semibold)
                }.foregroundColor(.black)
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }.foregroundColor(.black)


            }.padding(.horizontal)
            
            
            //post image and caption
            HStack(spacing: 10){
                if let image = viewModel.postImage{
                    image.resizable().scaledToFill().frame(width: 100,height: 100)
                        .clipped()
                }
                
                TextField("Enter a caption...", text: $caption,axis: .vertical)
            }
            .padding()
            
            Spacer()
            
        }
        
        .onAppear{
            imagePickerPresent.toggle()
        }
        
        .photosPicker(isPresented: $imagePickerPresent, selection: $viewModel.selectedImage)
    }
    
    
}//end of View

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(tabIndex: .constant(0))
    }
}
