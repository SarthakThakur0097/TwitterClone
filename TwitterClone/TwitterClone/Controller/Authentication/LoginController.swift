//
//  File.swift
//  TwitterClone
//
//  Created by Naresh on 4/15/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "TwitterLogo")
        
        return iv
    }()
    
    private lazy var emailContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: #imageLiteral(resourceName: "ic_mail_outline_white_2x-1"), textField: emailTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: #imageLiteral(resourceName: "ic_lock_outline_white_2x"), textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true

        return view
    }()
    
    private let emailTextField: UITextField = {

        return Utilities().TextField(withPlaceholder: "Email")
    }()
    
    private let passwordTextField: UITextField = {
        let tf = Utilities().TextField(withPlaceholder: "Password")
        tf.isSecureTextEntry = true
        
        return tf
    }()
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: Helpers
    

    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        
        view.addSubview(stack)
        
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }
}





























