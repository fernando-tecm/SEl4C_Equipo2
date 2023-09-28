//
//  LoginTextfields.swift
//  sel
//
//  Created by Fernando García on 12/09/23.
//

import UIKit

class LoginTextfields: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextfield()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setupTextfield()
    }
    private func setupTextfield(){
        layer.cornerRadius = 25
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.black.cgColor
        clipsToBounds = true
    }
    
}
