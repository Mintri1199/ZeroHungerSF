//
//  SignUpButton.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class SignUpButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTitle("Don't have a account? Sign up", for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
