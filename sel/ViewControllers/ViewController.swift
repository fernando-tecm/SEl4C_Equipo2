//
//  ViewController.swift
//  sel
//
//  Created by Fernando García on 31/08/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var buttonIngresar: UIButton!
    
    
    @IBOutlet weak var buttonRegistrarse: UIButton!
    
    
    @IBOutlet weak var layerNombre: LoginTextfields!
    
    @IBOutlet weak var layerPassword: LoginTextfields!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        estiloBotones()
        // Do any additional setup after loading the view.

    }
    
    func estiloBotones(){
        buttonIngresar.tintColor = UIColor(named: "azulTec")
        buttonIngresar.layer.cornerRadius = 25
        buttonIngresar.clipsToBounds = true
        
        buttonRegistrarse.tintColor = UIColor(named: "azulFuerte")
        buttonRegistrarse.layer.cornerRadius = 25
        buttonRegistrarse.clipsToBounds = true
        
        layerNombre.layer.cornerRadius = 25
        layerNombre.layer.borderWidth = 1
        layerNombre.layer.borderColor = UIColor.black.cgColor
        
        layerPassword.layer.cornerRadius = 25
        layerPassword.layer.borderWidth = 1
        layerPassword.layer.borderColor = UIColor.black.cgColor
        
    }
    


}

