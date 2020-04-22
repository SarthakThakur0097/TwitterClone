//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Sarthak on 4/15/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import UIKit
import Firebase

class MainTabController: UITabBarController {
    // MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        
        return button
    }()
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .twitterBlue
        //logUserOut()
        authenticateUserAndConfigureUI()
    }
    
    //MARK: - API
    
    func authenticateUserAndConfigureUI(){
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        } else {
            configureViewControllers()
            configureUI()
        }
    }
    
    func logUserOut() {
        do {
            try Auth.auth().signOut()
            print("DEBUG: Did log user out...")
        } catch let error {
            print("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
    
    // MARK: - Selectors
    @objc func actionButtonTapped() {
        print(123)
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)

        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        
        actionButton.layer.cornerRadius = 56 / 2
    }
    
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
