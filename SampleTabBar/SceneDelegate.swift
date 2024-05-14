//
//  SceneDelegate.swift
//  SampleTabBar
//
//  Created by koala panda on 2024/05/15.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            //UIwindowsのアンラップ
            guard let scene = (scene as? UIWindowScene) else { return }
            // window生成
            let window = UIWindow(windowScene: scene)
            // ルートビュー指定
            window.rootViewController = createTabbar()
            // キーウインドウ指定
            window.makeKeyAndVisible()
            // windowインスタンスが解放されないようにパラメータに代入する
            self.window = window

            configureNavigationBar()
        }

    func createHogeNC() -> UINavigationController {
        let hogeVC = HogeVC()
        hogeVC.title = "Hoge"
        hogeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)

        return UINavigationController(rootViewController: hogeVC)

    }

    func createFugaNC() -> UINavigationController {
        let fugaVC = FugaVC()
        fugaVC.title = "Fuga"
        fugaVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)

        return UINavigationController(rootViewController: fugaVC)

    }

    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = [createHogeNC(), createFugaNC()]

        return tabbar
    }


    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

