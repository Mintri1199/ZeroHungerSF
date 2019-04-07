//
//  SignupVies.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

// This UIView will house all the components for sign up screen
class SignupViews: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .yellow
        setupStackView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let outerStack = OuterStackView()
    private func setupStackView() {
        addSubview(outerStack)
        
        NSLayoutConstraint.activate([
            outerStack.topAnchor.constraint(equalTo: topAnchor, constant: 110),
            outerStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4),
            outerStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            outerStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
            ])
    }
    
    var signupButton: LoginButton = {
        var button = LoginButton(frame: .zero)
        button.setTitle("SIGN UP", for: .normal)
        button.backgroundColor = .purple
        return button
    }()
    
    func volunteerUI() {
        addSubview(signupButton)
        
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: outerStack.bottomAnchor, constant: 20),
            signupButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),
            signupButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            signupButton.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    func restaurantOwnerUI() {
        
    }
}
