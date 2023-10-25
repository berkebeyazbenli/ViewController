//
//  ViewController.swift
//  ViewControllerProject
//
//  Created by Berke Beyazbenli on 20.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var Text1: UITextField!
    
    var alınanSifre = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("vie did load")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        Text1.text = ""
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    
    
    
    @IBAction func ikinciVcGit(_ sender: Any) {
    }
    
   
    @IBAction func KontrolEt(_ sender: Any) {
        alınanSifre = Text1.text!
        
        if alınanSifre == "berke" {
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }else {
            
            Label1.text = "şifreniz yanlış"
        }
        
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! ViewController2
            destinationVC.verilenSifre = alınanSifre
        }
        
    }
    
}

