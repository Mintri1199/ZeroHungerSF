//
//  OuterStackView.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

// This stack view will contain the name stack and all the other components
class OuterStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        spacing = 30
        backgroundColor = .green
        distribution = .fillEqually
        setupTextFields()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var nameStack = NameStack(frame: .zero)
    
    var emailTextField: UserInputTextField = {
        var textField = UserInputTextField(frame: .zero)
        textField.placeholder = "Email address"
        
        return textField
    }()
    
    var passwordTextField: UserInputTextField = {
        var textField = UserInputTextField(frame: .zero)
        textField.isSecureTextEntry = true
        textField.placeholder = "Password"
        return textField
    }()
    
    var repeatPasswordTextField: UserInputTextField = {
        var textField = UserInputTextField(frame: .zero)
        textField.isSecureTextEntry = true
        textField.placeholder = "Re-type Password"
        return textField
    }()
    
    fileprivate func setupTextFields() {
        addArrangedSubview(nameStack)
        addArrangedSubview(emailTextField)
        addArrangedSubview(passwordTextField)
        addArrangedSubview(repeatPasswordTextField)
    }
}
