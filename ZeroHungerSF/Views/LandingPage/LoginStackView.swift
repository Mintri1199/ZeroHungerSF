//
//  LoginStackView.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class LoginStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        spacing = 30
        backgroundColor = .yellow
        
        distribution = .fillEqually
        setupTextField()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var emailTextField: UserInputTextField {
        let textField = UserInputTextField(frame: .zero)
        textField.keyboardType = .emailAddress
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Helvetica", size: 20)!
        ]
        textField.attributedPlaceholder = NSAttributedString(string: "Email", attributes:attributes)
        return textField
    }
    
    var passwordTextField: UserInputTextField {
        let textField = UserInputTextField(frame: .zero)
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Helvetica", size: 20)!
        ]
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes:attributes)
        return textField
    }
    
    var loginButton = LoginButton()
    
    fileprivate func setupTextField() {
        addArrangedSubview(emailTextField)
        addArrangedSubview(passwordTextField)
        addArrangedSubview(loginButton)
        
        NSLayoutConstraint.activate([
//            emailTextField.heightAnchor.constraint(equalToConstant: bounds.height * 0.3),
//            passwordTextField.heightAnchor.constraint(equalToConstant: bounds.height * 0.3),
//            loginButton.heightAnchor.constraint(equalToConstant: bounds.height * 0.3),
            loginButton.widthAnchor.constraint(equalToConstant: bounds.width * 0.8)
            
            ]
        )
    }
    
    
}
