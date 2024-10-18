//
//  SecundarioViewController.swift
//  Pioneras
//
//  Created by Master Moviles on 18/10/24.
//

import UIKit

class SecundarioViewController: UIViewController {
    
    @IBOutlet weak var campoTexto: UITextView!
    
    var nombreAsset: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cargar el asset de texto
        if let nombreAsset = nombreAsset {
            var texto = ""
            let asset = NSDataAsset(name: nombreAsset)
            if let data = asset?.data {
                texto = String(data: data, encoding: .utf8) ?? ""
                self.campoTexto.text = texto
            }
        }
    }

}
