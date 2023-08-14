//
//  RegistroPersonas.swift
//  KittyFormProg
//
//  Created by Fatima Ramirez on 12/08/23.
//

import Foundation
import UIKit

class RegisterPeople:  UIViewController {
    
    private let nombreTextField: UITextField = {
        let configTextField = UITextField()
        configTextField.borderStyle = .roundedRect
        configTextField.placeholder = "Nombre"
        configTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        configTextField.leftViewMode = .always
        configTextField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        configTextField.translatesAutoresizingMaskIntoConstraints = false
        return configTextField
    }()

    
    override func viewDidLoad() {

        view.backgroundColor = UIColor(red: 204/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1)
        
        navigationItem.titleView?.tintColor = .black
        navigationItem.title = "Registro habitantes"

        //cambios desde kitty
        
        view.addSubview(nombreTextField)
        constrainRegisterPeople()
        
    }
    
    func constrainRegisterPeople() {
        NSLayoutConstraint.activate([
        // nombre
            nombreTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nombreTextField.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            nombreTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30)
            
        ])
    }
    
}
