//
//  ExploreController.swift
//  TwitterClone
//
//  Created by Sarthak on 4/15/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import UIKit

class ExploreController: UIViewController{
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helper
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
        
    }
}

