//
//  SceneDelegate.swift
//  DragNDrop
//
//  Created by Pedro Sousa on 27/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        let controller = ViewController()
        window?.rootViewController = controller

        window?.makeKeyAndVisible()
    }
}
