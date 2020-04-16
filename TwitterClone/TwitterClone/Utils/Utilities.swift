//
//  Utilities.swift
//  TwitterClone
//
//  Created by Naresh on 4/15/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import UIKit

class Utilities {
    
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView{
        let view = UIView()

        let iv = UIImageView()
        view.addSubview(iv)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        iv.image = image
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
               
        view.addSubview(textField)
        textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor,
                         paddingLeft: 8, paddingBottom: 9)
        
        return view
    }
    
    func TextField(withPlaceholder placeholder: String) -> UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return tf
    }
}
