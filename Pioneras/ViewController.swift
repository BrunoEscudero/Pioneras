//
//  ViewController.swift
//  Pioneras
//
//  Created by Master Moviles on 18/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Preparar la pantalla secundaria antes de la transición
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Verificar que estamos yendo al SecundarioViewController
        if let destinoVC = segue.destination as? SecundarioViewController {
            // Establecer la propiedad nombreAsset concatenando el identifier del segue con "_bio"
            if let identifier = segue.identifier {
                destinoVC.nombreAsset = identifier + "_bio"
            }
        }
    }
    
    @IBAction func retornoDeSecundaria(segue: UIStoryboardSegue) {

    }
}

