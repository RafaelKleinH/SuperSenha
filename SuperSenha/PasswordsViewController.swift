//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Rafael Hartmann on 04/03/21.
//

import UIKit

class PasswordsViewController: UIViewController {

    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters :Int = 10
    var numberOfPasswords :Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacter: Bool!
    
    
    var passwordGenerator : PasswordGenerator!
    
    @IBAction func generate(_ sender: Any) {
        generatePasswords()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "totaç de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacter: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacter)
        
        generatePasswords()
     
        }
    func generatePasswords(){
        tvPasswords.scrollRangeToVisible(_NSRange(location: 0, length: 0))
        tvPasswords.text = "0"
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")}
        
    }

    
}
