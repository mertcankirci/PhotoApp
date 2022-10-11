//
//  PhotoDetail.swift
//  IkbalPhotoApp
//
//  Created by Mertcan Kırcı on 21.03.2022.
//

import SwiftUI

struct PhotoDetail: View {
    
    var photo: Person
    
    
    var body: some View {
        
        List{
            ZStack(alignment: .bottom) {
                Image(photo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 500)
                    .cornerRadius(10)
                    
                Rectangle()
                    .frame(height:10)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8) {
                        Text(photo.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            Text(photo.description)
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(12)
            
            
            
        }.padding(.top)
            .padding(.bottom)
        
        
        
        
    }
    
}

struct PhotoDetail_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetail(photo: imageData[3])
    }
}
