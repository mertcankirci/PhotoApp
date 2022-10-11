//
//  ContentView.swift
//  IkbalPhotoApp
//
//  Created by Mertcan Kırcı on 16.03.2022.
//

//  Created by Mert on 10.03.2022 , this is the app for love.
// https://www.youtube.com/watch?v=Xetrbmnszjc
//https://medium.com/@mahdi.mahjoobi/image-slider-in-swiftui-59bac18ae4f4
//https://medium.com/@mahdi.mahjoobi/image-slider-in-swiftui-59bac18ae4f4

import SwiftUI

struct HomeView: View {
    
    var categories: [String:[Person]] {
        .init(
        grouping: imageData,
        by: {$0.category.rawValue}
        )
    }
    
    
    
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(),id:\String.self) { key in
                PhotoRow(categoryName: "\(key) Photos".uppercased(),photos: self.categories[key]!)
                    .frame(width: 1000, height: 330)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationTitle(Text("PHOTOS"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
