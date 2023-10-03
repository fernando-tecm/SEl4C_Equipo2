//
//  RegisterViewModel.swift
//  sel
//
//  Created by Fernando García on 02/10/23.
//

import Foundation

class RegisterViewModel {
    var username: String = ""
    var password: String = ""
    var email: String = ""
    var gender: String = ""
    var country: String = ""
    var age: String = ""
    
    func Register() {
        
        let defaults = UserDefaults.standard
        
        Webservice().register(username: username, password: password, country: country, gender: gender, age: age,email: email) { result in
            switch result {
            case .success(let values):
                defaults.setValue(values, forKey: "../db")
              
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
