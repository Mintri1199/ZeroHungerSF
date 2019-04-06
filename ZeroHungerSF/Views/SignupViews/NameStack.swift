//
//  NameStack.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class NameStack: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .horizontal
        distribution = .fillEqually
        spacing = 20
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var firstNameTextField: UserInputTextField {
        let textField = UserInputTextField(frame: .zero)
        textField.keyboardType = .emailAddress
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Helvetica", size: 20)!
        ]
        textField.attributedPlaceholder = NSAttributedString(string: "First Name", attributes:attributes)
        return textField
    }
    
    var lastNameTextField: UserInputTextField {
        let textField = UserInputTextField(frame: .zero)
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Helvetica", size: 20)!
        ]
        textField.attributedPlaceholder = NSAttributedString(string: "Last Name", attributes:attributes)
        return textField
    }
    
    fileprivate func setupTextFields() {
        addArrangedSubview(firstNameTextField)
        addArrangedSubview(lastNameTextField)
    }
}
