//
//  Registro.swift
//  sel
//
//  Created by Fernando García on 26/09/23.
//

import UIKit

class ViewRegistro: UIViewController {
    
    
    @IBOutlet weak var buttonRegistrarme: UIButton!
    
    
    @IBOutlet weak var layerNombre: UITextField!
    
    @IBOutlet weak var layerPais: UITextField!
    
    @IBOutlet weak var layerGenero: UITextField!
    
    @IBOutlet weak var layerEdad: UITextField!
    
    @IBOutlet weak var layerEmail: UITextField!
    
    @IBOutlet weak var layerPassword: UITextField!
    
    @IBOutlet weak var TerminosYCondiciones: UITextView!
    
    private var registerVM = RegisterViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        estiloBotones()
        
        //Link para los terminos y condiciones
        TerminosYCondiciones.dataDetectorTypes = .link
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openLink))
        TerminosYCondiciones.addGestureRecognizer(tapGesture)
    }
    
    func estiloBotones(){
        buttonRegistrarme.tintColor = UIColor(named: "azulTec")
        buttonRegistrarme.layer.cornerRadius = 25
        buttonRegistrarme.clipsToBounds = true
        
        layerNombre.layer.cornerRadius = 25
        layerNombre.layer.borderWidth = 1
        layerNombre.layer.borderColor = UIColor.black.cgColor
        
        layerPais.layer.cornerRadius = 25
        layerPais.layer.borderWidth = 1
        layerPais.layer.borderColor = UIColor.black.cgColor
        
        layerPassword.layer.cornerRadius = 25
        layerPassword.layer.borderWidth = 1
        layerPassword.layer.borderColor = UIColor.black.cgColor
        
        layerEdad.layer.cornerRadius = 25
        layerEdad.layer.borderWidth = 1
        layerEdad.layer.borderColor = UIColor.black.cgColor
        
        layerGenero.layer.cornerRadius = 25
        layerGenero.layer.borderWidth = 1
        layerGenero.layer.borderColor = UIColor.black.cgColor
        
        layerEmail.layer.cornerRadius = 25
        layerEmail.layer.borderWidth = 1
        layerEmail.layer.borderColor = UIColor.black.cgColor
        
    }
    
    @objc func openLink(sender: UITapGestureRecognizer) {
        if let url = URL(string: "https://tec.mx/es/aviso-de-privacidad-sel4c") {
            UIApplication.shared.open(url, options: [:],completionHandler: nil)
        }
    }
    
    
    @IBAction func AlreadyRegistered(_ sender: UIButton) {
        guard
               let username = layerNombre.text,
               let password = layerPassword.text,
               let country = layerPais.text,
               let age = layerEdad.text,
               let email = layerEmail.text,
               let gender = layerGenero.text
           else {
               return
           }
        print(username,password,country,age,email,gender)
           let webService = Webservice()
           
           webService.register(
               username: username,
               password: password,
               country: country,
               gender: gender,
               age: age,
               email: email
           ) { [weak self] result in
               DispatchQueue.main.async {
                   switch result {
                   case .success(let values):
                       print("Registration successful: \(values)")
                       self?.performSegue(withIdentifier: "AccessToPreTest", sender: self)
                   case .failure(let error):
                       print("Registration failed: \(error)")
                   }
               }
           }
       }
}
