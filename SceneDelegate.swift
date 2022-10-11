//
//  SceneDelegate.swift
//  IkbalPhotoApp
//
//  Created by Mertcan Kırcı on 18.03.2022.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    
    func scene(scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: HomeView())
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
