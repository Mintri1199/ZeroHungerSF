//
//  SignupViewController.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class LoginLandingPage: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red 
        setupViews()
        loginViews.loginStackView.loginButton.addTarget(self, action: #selector(pushToHomeScreen), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configNavbar()
    }
    
    var loginViews = LandingPageViews(frame: .zero)
    
    private func configNavbar() {
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    private func setupViews() {
        view.addSubview(loginViews)
        
        NSLayoutConstraint.activate([
            loginViews.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            loginViews.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            loginViews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            loginViews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
            ])
    }
    
    @objc private func pushToHomeScreen() {
        guard let emailText = loginViews.loginStackView.emailTextField.text,
              let passwordText = loginViews.loginStackView.passwordTextField.text else {
                return
        }
        
        print("email: \(emailText)")
        print("password: \(passwordText)")
        if emailText.isEmpty || passwordText.isEmpty {
            loginViews.loginStackView.loginButton.shake()
        } else if emailText.isValidEmail() != true {
            loginViews.loginStackView.emailTextField.shake()
        } else {
            // Insert aunthentication here
            navigationController?.pushViewController(HomeScreen(), animated: true)
        }
    }
}
