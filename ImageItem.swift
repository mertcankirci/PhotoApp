//
//  ImageItem.swift
//  IkbalPhotoApp
//
//  Created by Mertcan Kırcı on 16.03.2022.
//

import SwiftUI

struct ImageItem : View {
    
    var person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
        Image(person.imageName)
            .resizable()
                .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 400, height: 300)
            .cornerRadius(40)
            .shadow(radius: 300)
            
            VStack(alignment: .leading, spacing: 5.0) {
           
                
            Text(person.name)
                .foregroundColor(.primary)
                .font(.headline)

            Text(person.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
            }
                
    }
    }
}

struct ImageItem_Previews: PreviewProvider {
    static var previews: some View {
        ImageItem(person: imageData[0])
    }
}
