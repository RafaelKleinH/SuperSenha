//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Rafael Hartmann on 04/03/21.
//

import Foundation

class PasswordGenerator{
    var numberOfCharacter: Int
    var useLetter: Bool
    var useNumbers: Bool
    var useCapitalLetters :Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letter: String = "abcdefghijklmonpqrstuvwxyz"
    private let specialCharacters: String = "!@#$%^&*()_-+=~':;?/<>.,"
    private let numbers: String = "0123456789"
    
    init(numberOfCharacter: Int, useLetters: Bool, useNumbers:Bool, useCapitalLetters: Bool, useSpecialCharacters:Bool) {
        
        var numchars = min(numberOfCharacter, 16)
        numchars = max(numchars, 1)
        
        self.numberOfCharacter = numchars
        self.useLetter = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacters = useSpecialCharacters
        
    }
    
    func generate(total:Int) -> [String] {
        passwords.removeAll()
        var universe:String = ""
        
        if useLetter {
            universe += letter
        }
        if useNumbers {
            universe += numbers
        }
        if useSpecialCharacters{
            universe += specialCharacters
            
        }
        if useCapitalLetters {
            universe += letter.uppercased()
            
        }
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacter{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                
                password += String(universeArray[index])
                
            }
            passwords.append(password)
        }
        
        return passwords
    }
    
    
    
    
}
