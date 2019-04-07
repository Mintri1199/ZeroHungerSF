//
//  TypeOfUserViewController.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit


// This viewcontroller will have to button (volunteers or restaurant owner)
class TypeOfUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        setupStackView()
        volunteerButton.addTarget(self, action: #selector(pushToVolunteerSignup), for: .touchUpInside)
        restaurantOwnerButton.addTarget(self, action: #selector(pushToRestaurantOwnerSignup), for: .touchUpInside)
    }
    
    var typeStackView: UIStackView = {
        var stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    var volunteerButton: LoginButton = {
        var button = LoginButton(frame: .zero)
        button.setTitle("Volunteer", for: .normal)
        button.backgroundColor = .green
        return button
    }()
    
    var restaurantOwnerButton: LoginButton = {
        var button = LoginButton(frame: .zero)
        button.setTitle("Restaurant Owner", for: .normal)
        button.titleLabel?.numberOfLines = 2
        button.backgroundColor = .gray
        return button
    }()
    
    fileprivate func setupStackView() {
        view.addSubview(typeStackView)
        typeStackView.addArrangedSubview(volunteerButton)
        typeStackView.addArrangedSubview(restaurantOwnerButton)
        
        NSLayoutConstraint.activate([
            typeStackView.heightAnchor.constraint(equalToConstant: view.bounds.width * 0.6 - 20),
            typeStackView.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.6),
            typeStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            typeStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    
    @objc private  func pushToVolunteerSignup() {
        navigationController?.pushViewController(VolunteerViewController(), animated: true)
    }
    
    @objc private  func pushToRestaurantOwnerSignup() {
        navigationController?.pushViewController(RestaurantOwnerViewController(), animated: true)
    }

}