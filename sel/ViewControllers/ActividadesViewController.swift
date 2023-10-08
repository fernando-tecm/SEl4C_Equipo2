//
//  ActividadesViewController.swift
//  sel
//
//  Created by José Andrés Rodríguez Ruiz on 04/10/23.
//

import UIKit



class ActividadesViewController: UIViewController {
    
    
<<<<<<< HEAD
    @IBOutlet weak var textView1: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bulletPoint: String = "\u{2022}" // El carácter de viñeta
                
        let firstNormalText = "1.Haz una lluvia de ideas sobre problemas sociales o ambientales que se dan en tu entorno."
        
        let firstListText = """
        \n\(bulletPoint) ¿Cuáles identificas?
        \(bulletPoint) Mínimo deben poder identificar 5 problemáticas.
        \(bulletPoint) ¿Cómo te afectan estos problemas? ¿Has escuchado que le afecten a alguien cercano?
        \(bulletPoint) ¿Por qué se consideran un problema?
        """
        
        let secondNormalText = "\n 2.-Ahora, entrevista a una persona respecto a la misma idea:"
        
        let secondListText = """
        \n\(bulletPoint) ¿Qué problemas ambientales o sociales identificas en tu casa, colonia o ciudad o país?
        \(bulletPoint) ¿Por qué son un problema?
        \(bulletPoint) ¿Quiénes intervienen en el problema?
        \(bulletPoint) ¿Te has visto afectado por este problema? ¿Cómo?
        """
        
        let thirdNormalText = "\n3.Por último, has un recorrido por tu colonia o ciudad y registra lo que ves relacionado con la situación ambiental o social. Busca identificar situaciones que no te agraden o problemas ya identificados."
        
        let thirdListText = """
        \n\(bulletPoint) ¿Que viste?
        \(bulletPoint) ¿Dónde lo viste?
        \(bulletPoint) ¿Había alguien ocasionándolo o atendiéndolo?
        """
        
        let fourthNormalText = "\n¿Qué debes entregar?"
        
        let fourthListText = """
        \n\(bulletPoint) Conclusión de la reflexión inicial
        \(bulletPoint) Conclusión de la entrevista
        \(bulletPoint) Tabla con el registro de lo observado
        """
        
        let fullText = "\(firstNormalText)\(firstListText)\(secondNormalText)\(secondListText)\(thirdNormalText)\(thirdListText)\(fourthNormalText)\(fourthListText)"
        
        let attributedText = NSMutableAttributedString(string: fullText)
        
        // Estilo de párrafo para el primer texto normal con espacio después
        let firstParagraphStyle = NSMutableParagraphStyle()
        firstParagraphStyle.alignment = .left
        firstParagraphStyle.firstLineHeadIndent = 10.0 // Espaciado para la viñeta
        firstParagraphStyle.paragraphSpacing = 20.0 // Espaciado después del firstNormalText
        
        // Estilo de párrafo para el segundo texto normal con espacio después
        let secondParagraphStyle = NSMutableParagraphStyle()
        secondParagraphStyle.alignment = .left
        secondParagraphStyle.firstLineHeadIndent = 10.0 // Espaciado para la viñeta
        secondParagraphStyle.paragraphSpacing = 20.0 // Espaciado después del secondNormalText
        
        // Estilo de párrafo para el tercer texto normal con espacio después
        let thirdParagraphStyle = NSMutableParagraphStyle()
        thirdParagraphStyle.alignment = .left
        thirdParagraphStyle.firstLineHeadIndent = 10.0 // Espaciado para la viñeta
        thirdParagraphStyle.paragraphSpacing = 20.0 // Espaciado después del thirdNormalText
        
        // Estilo de párrafo para el cuarto texto normal
        let fourthParagraphStyle = NSMutableParagraphStyle()
        fourthParagraphStyle.alignment = .left
        fourthParagraphStyle.firstLineHeadIndent = 10.0 // Espaciado para la viñeta
        fourthParagraphStyle.paragraphSpacing = 20.0 // Espaciado después del thirdNormalText

        
        // Estilo de párrafo para los textos en lista
        let listParagraphStyle = NSMutableParagraphStyle()
        listParagraphStyle.alignment = .left
        listParagraphStyle.firstLineHeadIndent = 10.0 // Espaciado para la viñeta
        
        // Aplicar negrita a todos los textos normales
        let boldFont = UIFont.boldSystemFont(ofSize: 17.0) // Tamaño de fuente en negrita para el texto normal
        
        let firstNormalTextRange = NSRange(location: 0, length: firstNormalText.count)
        attributedText.addAttributes([.font: boldFont, .paragraphStyle: firstParagraphStyle], range: firstNormalTextRange)
        
        let secondNormalTextRange = NSRange(location: firstNormalText.count + firstListText.count, length: secondNormalText.count)
        attributedText.addAttributes([.font: boldFont, .paragraphStyle: secondParagraphStyle], range: secondNormalTextRange)
        
        let thirdNormalTextRange = NSRange(location: firstNormalText.count + firstListText.count + secondNormalText.count + secondListText.count, length: thirdNormalText.count)
        attributedText.addAttributes([.font: boldFont, .paragraphStyle: thirdParagraphStyle], range: thirdNormalTextRange)
        
        let fourthNormalTextRange = NSRange(location: firstNormalText.count + firstListText.count + secondNormalText.count + secondListText.count + thirdNormalText.count + thirdListText.count, length: fourthNormalText.count)
        attributedText.addAttributes([.font: boldFont, .paragraphStyle: fourthParagraphStyle], range: fourthNormalTextRange)
        
        // Cambiar el tamaño de fuente para los textos en lista y ajustar el espacio antes
        let listFont = UIFont.systemFont(ofSize: 14.0) // Tamaño de fuente para el texto en viñetas
        
        let firstListTextRange = NSRange(location: firstNormalText.count, length: firstListText.count)
        attributedText.addAttributes([.font: listFont, .paragraphStyle: listParagraphStyle], range: firstListTextRange)
        
        let secondListTextRange = NSRange(location: firstNormalText.count + firstListText.count + secondNormalText.count, length: secondListText.count)
        attributedText.addAttributes([.font: listFont, .paragraphStyle: listParagraphStyle], range: secondListTextRange)
        
        let thirdListTextRange = NSRange(location: firstNormalText.count + firstListText.count + secondNormalText.count + secondListText.count + thirdNormalText.count, length: thirdListText.count)
        attributedText.addAttributes([.font: listFont, .paragraphStyle: listParagraphStyle], range: thirdListTextRange)
        
        let fourthListTextRange = NSRange(location: firstNormalText.count + firstListText.count + secondNormalText.count + secondListText.count + thirdNormalText.count + thirdListText.count, length: fourthListText.count)
        attributedText.addAttributes([.font: listFont, .paragraphStyle: listParagraphStyle], range: fourthListTextRange)
                        
        textView1.attributedText = attributedText
    }
    
        
=======
    @IBOutlet weak var viewAct1: UIView!
    @IBOutlet weak var buttonAct1: UIButton!
        
    @IBOutlet weak var viewAct2: UIView!
    @IBOutlet weak var buttonAct2: UIButton!
    
    @IBOutlet weak var viewAct3: UIView!
    @IBOutlet weak var buttonAct3: UIButton!
    
    @IBOutlet weak var viewAct4: UIView!
    @IBOutlet weak var buttonAct4: UIButton!
    
    @IBOutlet weak var viewFinal: UIView!
    @IBOutlet weak var buttonFinal: UIButton!
    
    @IBOutlet weak var ViewCierre: UIView!
    @IBOutlet weak var buttonCierre: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        estiloBotones()
    }
    
    func estiloBotones() {
        viewAct1.layer.cornerRadius = 15
        viewAct2.layer.cornerRadius = 15
        viewAct3.layer.cornerRadius = 15
        viewAct4.layer.cornerRadius = 15
        viewFinal.layer.cornerRadius = 15
        ViewCierre.layer.cornerRadius = 15
        
        buttonAct1.tintColor = UIColor(named: "azulTec")
        buttonAct1.layer.cornerRadius = 25
        buttonAct1.clipsToBounds = true
        
        buttonAct2.tintColor = UIColor(named: "azulTec")
        buttonAct2.layer.cornerRadius = 25
        buttonAct2.clipsToBounds = true
        
        buttonAct3.tintColor = UIColor(named: "azulTec")
        buttonAct3.layer.cornerRadius = 25
        buttonAct3.clipsToBounds = true
        
        buttonAct4.tintColor = UIColor(named: "azulTec")
        buttonAct4.layer.cornerRadius = 25
        buttonAct4.clipsToBounds = true
        
        buttonCierre.tintColor = UIColor(named: "azulTec")
        buttonCierre.layer.cornerRadius = 25
        buttonCierre.clipsToBounds = true
        
        buttonFinal.tintColor = UIColor(named: "azulTec")
        buttonFinal.layer.cornerRadius = 25
        buttonFinal.clipsToBounds = true

    }
    
    

>>>>>>> IOS

}
