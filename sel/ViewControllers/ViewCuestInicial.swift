//
//  ViewCuestInicial.swift
//  sel
//
//  Created by Fernando García on 26/09/23.
//

import UIKit

class ViewCuestInicial: UIViewController {

    
    
    @IBOutlet weak var labelTipoPregunta: UILabel!
    
    @IBOutlet weak var labelNumPregunta: UILabel!
    
    @IBOutlet weak var labelPregunta: UILabel!
    
    @IBOutlet weak var buttonTotalmenteDesacuerdo: UIButton!
    
    @IBOutlet weak var buttonDesacuerdo: UIButton!
    
    @IBOutlet weak var buttonNiAcuerdoNiDesacuerdo: UIButton!
    
    @IBOutlet weak var buttonAcuerdo: UIButton!
    
    @IBOutlet weak var buttonTotalmenteAcuerdo: UIButton!
    
    
    @IBOutlet weak var barraProgreso: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        estiloBotones()
        // Do any additional setup after loading the view.
    }
    
    func estiloBotones(){
        
        buttonTotalmenteDesacuerdo.tintColor = UIColor.white
        buttonTotalmenteDesacuerdo.layer.cornerRadius = 25
        buttonTotalmenteDesacuerdo.clipsToBounds = true
        buttonTotalmenteDesacuerdo.layer.borderWidth = 1
        buttonTotalmenteDesacuerdo.layer.borderColor = UIColor.black.cgColor
        
        buttonDesacuerdo.tintColor = UIColor.white
        buttonDesacuerdo.layer.cornerRadius = 25
        buttonDesacuerdo.clipsToBounds = true
        buttonDesacuerdo.layer.borderWidth = 1
        buttonDesacuerdo.layer.borderColor = UIColor.black.cgColor
        
        buttonNiAcuerdoNiDesacuerdo.tintColor = UIColor.white
        buttonNiAcuerdoNiDesacuerdo.layer.cornerRadius = 25
        buttonNiAcuerdoNiDesacuerdo.clipsToBounds = true
        buttonNiAcuerdoNiDesacuerdo.layer.borderWidth = 1
        buttonNiAcuerdoNiDesacuerdo.layer.borderColor = UIColor.black.cgColor
        
        buttonAcuerdo.tintColor = UIColor.white
        buttonAcuerdo.layer.cornerRadius = 25
        buttonAcuerdo.clipsToBounds = true
        buttonAcuerdo.layer.borderWidth = 1
        buttonAcuerdo.layer.borderColor = UIColor.black.cgColor
        
        buttonTotalmenteAcuerdo.tintColor = UIColor.white
        buttonTotalmenteAcuerdo.layer.cornerRadius = 25
        buttonTotalmenteAcuerdo.clipsToBounds = true
        buttonTotalmenteAcuerdo.layer.borderWidth = 1
        buttonTotalmenteAcuerdo.layer.borderColor = UIColor.black.cgColor
        
    
        

    }


}

