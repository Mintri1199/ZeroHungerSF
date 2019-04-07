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
        setupViews()
        loginStackView.signupButton.addTarget(self, action: #selector(pushToSignupType), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var loginStackView = LoginStackView(frame: .zero)
    
    
    private func setupViews() {
        addSubview(loginStackView)
        
        
        NSLayoutConstraint.activate([
            loginStackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3),
            loginStackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
            loginStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginStackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50),
            ])

    }
    
    @objc func pushToSignupType() {
        guard let VC = findViewController() as? LoginLandingPage else { return }
        VC.navigationController?.pushViewController(TypeOfUserViewController(), animated: true)
        print("Sign up button tapped")
    }
}
