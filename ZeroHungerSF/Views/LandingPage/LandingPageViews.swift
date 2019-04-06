//
//  LandingPageViews.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

// This UIView will house all the components for the landing page
class LandingPageViews: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupStackView()
        setupSignupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var loginStackView = LoginStackView(frame: .zero)
    var signupButton = SignUpButton(frame: .zero)
    
    fileprivate func setupStackView() {
        addSubview(loginStackView)
        
        NSLayoutConstraint.activate([
            loginStackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),
            loginStackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
            loginStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginStackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50)
            ])
    }
    
    fileprivate func setupSignupButton() {
        addSubview(signupButton)
        
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: loginStackView.bottomAnchor, constant: 20),
            signupButton.leadingAnchor.constraint(equalTo: loginStackView.leadingAnchor, constant: 0),
            signupButton.trailingAnchor.constraint(equalTo: loginStackView.trailingAnchor, constant: 0),
        signupButton.heightAnchor.constraint(equalToConstant: bounds.height * 0.2),
            signupButton.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
        
    }
    
    
}
