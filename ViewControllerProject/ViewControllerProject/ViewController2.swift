//
//  ViewController2.swift
//  ViewControllerProject
//
//  Created by Berke Beyazbenli on 20.10.2023.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var Label2: UILabel!
    
    @IBOutlet weak var bulunanSifre: UILabel!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bulunanSifre.text = verilenSifre

    }
    

    

}
