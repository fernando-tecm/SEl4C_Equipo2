//
//  Registro.swift
//  sel
//
//  Created by Fernando García on 26/09/23.
//

import UIKit

class ViewRegistro: UIViewController {
    
    
    @IBOutlet weak var buttonRegistrarme: UIButton!
    
    
    @IBOutlet weak var layerNombre: LoginTextfields!
    
    @IBOutlet weak var layerPais: LoginTextfields!
    
    @IBOutlet weak var layerGenero: LoginTextfields!
    
    @IBOutlet weak var layerEdad: LoginTextfields!
    
    @IBOutlet weak var layerEmail: LoginTextfields!
    
    @IBOutlet weak var layerPassword: LoginTextfields!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        estiloBotones()
        // Do any additional setup after loading the view.

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
}
