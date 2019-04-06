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
    }
    
    var views = LandingPageViews(frame: .zero)
    
    private func setupViews() {
        view.addSubview(views)
        
        NSLayoutConstraint.activate([
            views.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            views.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            views.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            views.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
            ])
        
    }
}
