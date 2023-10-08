//
//  ViewPerfil.swift
//  sel
//
//  Created by Fernando García on 01/10/23.
//

import UIKit

class ViewPerfil: UIViewController {
    
    var loginVM = RegisterViewModel()

    
    @IBOutlet var viewMain: UIView!
    
    @IBOutlet weak var formaView: UIView!
    
    @IBOutlet weak var labelNombre: UITextField!
    
    @IBOutlet weak var labelMail: UITextField!
    
    @IBOutlet weak var labelPass: UITextField!
    
    @IBOutlet weak var labelNewPass: UITextField!
    
    @IBOutlet weak var buttonLogout: UIButton!
    
    @IBOutlet weak var buttonModify: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        estiloBotones()
        viewMain.backgroundColor = UIColor(named:"azulTec")
        
        
    }
    
    
    func estiloBotones(){
        formaView.layer.cornerRadius = 15
        
        buttonLogout.tintColor = UIColor(named: "azulTec")
        buttonLogout.layer.cornerRadius = 25
        buttonLogout.clipsToBounds = true
        
        buttonModify.tintColor = UIColor(named: "azulTec")
        buttonModify.layer.cornerRadius = 25
        buttonModify.clipsToBounds = true
        
        labelNombre.layer.cornerRadius = 25
        labelNombre.layer.borderWidth = 1
        labelNombre.layer.borderColor = UIColor.black.cgColor
        labelNombre.tintColor = UIColor(named: "labelPerfil")
        
        labelMail.layer.cornerRadius = 25
        labelMail.layer.borderWidth = 1
        labelMail.layer.borderColor = UIColor.black.cgColor
        labelMail.tintColor = UIColor(named: "labelPerfil")
        
        labelPass.layer.cornerRadius = 25
        labelPass.layer.borderWidth = 1
        labelPass.layer.borderColor = UIColor.black.cgColor
        labelPass.tintColor = UIColor(named: "labelPerfil")
        
        labelNewPass.layer.cornerRadius = 25
        labelNewPass.layer.borderWidth = 1
        labelNewPass.layer.borderColor = UIColor.black.cgColor
        labelNewPass.tintColor = UIColor(named: "labelPerfil")
        
    }
    
    func showLabelData() {
        labelNombre.text = loginVM.name
        labelPass.text = loginVM.password
    }
    
    @IBAction func modificarContraseña(_ sender: UIButton) {
        // Verificar si la contraseña actual ingresada coincide con la contraseña actual en loginVM
        if let currentPassword = labelPass.text, currentPassword == loginVM.password {
            // Verificar si la nueva contraseña y la confirmación coinciden
            if let newPassword = labelNewPass.text, newPassword == labelConfirmNewPass.text {
                // Actualizar la contraseña en loginVM
                loginVM.password = newPassword
                // Aquí puedes realizar cualquier otra acción que necesites, como guardar la contraseña en la base de datos, etc.
                // Mostrar un mensaje de éxito
                mostrarAlerta(mensaje: "Contraseña modificada exitosamente")
            } else {
                // Mostrar un mensaje de error si la nueva contraseña y la confirmación no coinciden
                mostrarAlerta(mensaje: "Las contraseñas no coinciden")
            }
        } else {
            // Mostrar un mensaje de error si la contraseña actual ingresada no es correcta
            mostrarAlerta(mensaje: "Contraseña actual incorrecta")
        }
    }

    // Función para mostrar una alerta
    func mostrarAlerta(mensaje: String) {
        let alertController = UIAlertController(title: "Mensaje", message: mensaje, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}


