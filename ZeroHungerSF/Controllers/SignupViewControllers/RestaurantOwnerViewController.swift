//
//  RestaurantOwnerViewController.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

// This feature is out of scope for the time being
// TODO: just show a coming soon picture
class RestaurantOwnerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupForm()
    }
    
    let userSignupForm = SignupViews()
    
    private func setupForm() {
        view.addSubview(userSignupForm)
        
        NSLayoutConstraint.activate([
            userSignupForm.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            userSignupForm.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            userSignupForm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            userSignupForm.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            ])
    }}
