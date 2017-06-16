//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Luis on 16/06/17.
//  Copyright © 2017 luisdv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    let coleccionDePaises = ColeccionDePaises()
    let coleccionDeHamburguesas = ColeccionDeHamburguesa()
    let colores = Colores()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnaHamburguesa() {
        nombrePais.text = coleccionDePaises.obtenPais()
        nombreHamburguesa.text = coleccionDeHamburguesas.obtenHamburguesa()
        
        let colorAleatorio = colores.regresColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

