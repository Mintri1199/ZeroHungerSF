//
//  SignupViewController.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class LoginLandingPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red 
        setupViews()
        views.loginStackView.loginButton.addTarget(self, action: #selector(pushToHomeScreen), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configNavbar()
    }
    
    var views = LandingPageViews(frame: .zero)
    
    private func configNavbar() {
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    private func setupViews() {
        view.addSubview(views)
        
        NSLayoutConstraint.activate([
            views.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            views.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            views.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            views.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
            ])
    }
    
    @objc private func pushToHomeScreen() {
        navigationController?.pushViewController(HomeScreen(), animated: true)
    }
}
