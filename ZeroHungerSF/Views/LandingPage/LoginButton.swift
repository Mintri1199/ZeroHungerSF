//
//  LoginButton.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class LoginButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTitle("Login", for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.green
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
