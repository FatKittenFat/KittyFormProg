//
//  ViewController.swift
//  KittyFormProg
//
//  Created by Fatima Ramirez on 12/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Label kitty"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 30.0)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    } ()
    
    private let subtitleLabel : UILabel = {
        
        let textLabel = UILabel()
        textLabel.numberOfLines = 2
        textLabel.textAlignment = .justified
        textLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 20.0)
        textLabel.textColor = UIColor.lightGray
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "Bienvenido a KittyLand"
        
        return textLabel
    }()
    
    private lazy var registerButton : UIButton = {
        // crear config de botton
        var configButton = UIButton.Configuration.filled()
        configButton.title = "Registrar Habitante"
        configButton.image = UIImage(systemName: "person.fill.checkmark")
        configButton.imagePlacement = .leading
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.toRegisterPeople()
        }))
        button.configuration = configButton
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let viewButton : UIButton = {
        var configButton = UIButton.Configuration.filled()
        configButton.title = "Ver Habitantes"
        configButton.image = UIImage(systemName: "person.2.fill")
        configButton.imagePlacement = .leading
        configButton.background.backgroundColor = UIColor.white
        configButton.baseForegroundColor = UIColor.black
        
        let button = UIButton(type: .system)
        button.configuration = configButton
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
       
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 204/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1)
        //view.backgroundColor = UIColor(red: 230.0, green: 230.0, blue: 255.0, alpha: 1.0)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(registerButton)
        view.addSubview(viewButton)
        kittyConstraint()
        
    }
    
    func kittyConstraint() {
        NSLayoutConstraint.activate(
            [
                // titulo
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleLabel.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 100),
               
                // instrucciones
                subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
                // boton registrar
                registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                registerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                // boton ver
                viewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                // de botonVer.enLaParteDeArriba.meteConstraint(igualA: botonRegistrar.parteAbajo, espacio)
                viewButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 10)

            ])
    }
    
    func toRegisterPeople (){
        print("Boton registerButton presionado!")
        
        //self.present(RegisterPeople(), animated: true, completion: nil)
        self.navigationController?.pushViewController(RegisterPeople(), animated: true)
        let backButton = UIBarButtonItem()
        backButton.title = "Atras"
        navigationItem.backBarButtonItem = backButton
        
    }
    
    
    
}


