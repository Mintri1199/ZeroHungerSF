//
//  UserInputTextField.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import UIKit

class UserInputTextField: UITextField, UITextFieldDelegate {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        autocorrectionType = .no
        font = UIFont(name: "Helvetica", size: 20)
        
        layer.cornerRadius = 10
        delegate = self
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Helvetica", size: 20)!
        ]
        attributedPlaceholder = NSAttributedString(string: "", attributes:attributes)
        
        // Adjust the font size dynamically
        minimumFontSize = 14
        adjustsFontSizeToFitWidth = true
        textColor = .black
        textAlignment = .left
        backgroundColor = .white
        keyboardType = .default
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Hide the keyboard when the user tap return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Stop the user from editing when the keyboard is hidden
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
    
    // Provide padding to the text
    let padding = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    // Provide padding to the text
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        super.drawText(in: rect.inset(by: insets))
    }
}
