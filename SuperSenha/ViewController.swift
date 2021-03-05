//
//  ViewController.swift
//  SuperSenha
//
//  Created by Rafael Hartmann on 04/03/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    
    @IBOutlet weak var swCaptalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialCaracters: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let passwordsViewController = segue.destination as! PasswordsViewController
            
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordsViewController.numberOfPasswords = numberOfPasswords
            
            
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!){
            passwordsViewController.numberOfCharacters = numberOfCharacters
            
            
        }
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCaptalLetters.isOn
        passwordsViewController.useSpecialCharacter = swSpecialCaracters.isOn
        
        view.endEditing(true)
        
    }

}

