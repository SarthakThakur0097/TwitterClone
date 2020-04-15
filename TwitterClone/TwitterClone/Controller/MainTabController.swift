//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Sarthak on 4/15/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewControllers() 
        view.backgroundColor = .systemPink
    }
    
    // MARK: - Helpers
    
    func configureViewControllers(){
        
        let feed = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController:
            FeedController())
        
        let explore = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: ExploreController())
        
        let notifications = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: NotificationsController())

        let conversations = templateNavigationController(image:  UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: ConversationsController())

        viewControllers = [feed, explore, notifications, conversations]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) ->
        UINavigationController{
            
        let nav = UINavigationController(rootViewController: rootViewController)
            nav.tabBarItem.image = image
            nav.navigationBar.barTintColor = .white
        
        return nav
    }
}
