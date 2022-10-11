//
//  PhotoRow.swift
//  IkbalPhotoApp
//
//  Created by Mertcan Kırcı on 16.03.2022.
//
// image resize https://stackoverflow.com/questions/31314412/how-to-resize-image-in-swift

import SwiftUI

struct PhotoRow: View {
    
    var categoryName : String
    var photos: [Person]
   
  /*  let targetSize = CGSize(width: 100, height: 100)
    let widthScaleRatio = targetSize.width / self.photos.size.width
    let heightScaleRatio = targetSize.height / self.photos.size.height */
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text(self.categoryName)
                .font(.title)
                
                
            ScrollView (.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 20) {
                        
                        ForEach(photos, id:\.self) {
                    person in
                            NavigationLink(destination: PhotoDetail(photo: person)) {
                    ImageItem(person: person)
                            .frame(width: 300)
                        .padding(.trailing, 100)
                            }
                        }
                    }
                }
            .padding()
            .frame(height: 550)
            .padding()
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow(categoryName: "Bilecik", photos: imageData)
    }
}
