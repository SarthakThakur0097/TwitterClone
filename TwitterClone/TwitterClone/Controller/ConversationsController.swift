//
//  ConversationsController.swift
//  TwitterClone
//
//  Created by Naresh on 4/15/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController{
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helper
    
    func configureUI() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.title = "Messages"
        
    }
}

