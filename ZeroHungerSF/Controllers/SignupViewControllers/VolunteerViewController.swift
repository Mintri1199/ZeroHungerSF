//
//  VolunteerViewController.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class VolunteerViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupForm()
//        userSignupForm.outerStack.nameStack.firstNameTextField.delegate = self
//        userSignupForm.outerStack.nameStack.lastNameTextField.delegate = self
//        userSignupForm.outerStack.emailTextField.delegate = self
//        userSignupForm.outerStack.passwordTextField.delegate = self
//        userSignupForm.outerStack.repeatPasswordTextField.delegate = self
        userSignupForm.signupButton.addTarget(self, action: #selector(pushToHomeScreen), for: .touchUpInside)
    }
    
    let userSignupForm = SignupViews()
    
    private func setupForm() {
        view.addSubview(userSignupForm)
        userSignupForm.volunteerUI()
        NSLayoutConstraint.activate([
            userSignupForm.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            userSignupForm.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            userSignupForm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            userSignupForm.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            ])
    }
    
    // TODO: come back to this once the user model is finished
    @objc private func pushToHomeScreen(){
        guard let firstNameText = userSignupForm.outerStack.nameStack.firstNameTextField.text,
            let lastNameText = userSignupForm.outerStack.nameStack.lastNameTextField.text,
            let emailText = userSignupForm.outerStack.emailTextField.text,
            let passwordText = userSignupForm.outerStack.passwordTextField.text,
            let repeatedPasswordText = userSignupForm.outerStack.repeatPasswordTextField.text else {
            userSignupForm.signupButton.shake()
            return
        }
        print("firstName: \(firstNameText)")
        print(emailText)
        print(passwordText)
        if firstNameText.isEmpty || lastNameText.isEmpty || emailText.isEmpty || passwordText.isEmpty || repeatedPasswordText.isEmpty {
            userSignupForm.signupButton.shake()
            
        } else if emailText.isValidEmail() != true{
            // Making sure the user inputted valid email
            userSignupForm.outerStack.emailTextField.shake()
            
        } else if passwordText.elementsEqual(repeatedPasswordText) != true{
        // Making sure the user inputted the same password
            userSignupForm.outerStack.passwordTextField.shake()
            userSignupForm.outerStack.repeatPasswordTextField.shake()
        } else {
            navigationController?.pushViewController(HomeScreen(), animated: true)
        }
    }
}
