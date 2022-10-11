//
//  File.swift
//  IkbalPhotoApp
//
//  Created by Mertcan Kırcı on 16.03.2022.
//

import SwiftUI


struct Person: Hashable , Codable , Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var description: String
    var category: Category
    
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case bilecik = "bilecik"
        case balikesir = "balikesir"
    }
                
}
