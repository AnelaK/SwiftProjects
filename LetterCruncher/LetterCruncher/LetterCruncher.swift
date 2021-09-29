//
//  LetterCruncher.swift
//  LetterCruncher
//
//  Created by Karamustafic, Anela on 9/22/21.
//
class LetterCruncher{
    
    let maxSize = 7
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let letterGroups = ["ABC","DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
    
    // Limit string length to 7. Called from shouldChangeCharactersIn
    func isValidInput(inputString: String) -> Bool{
        if inputString.count < maxSize{
            return true
        }
        else{
            return false
        }
    }
    
    // Generate the digits string. Called from @IBAction func onTextInput(_ sender: UITextField)
    func makeDigitsString(inputString: String) -> String{
        var digitsString = ""
        for char in inputString{
            for (i, letters) in letterGroups.enumerated() {
                if nil != letters.range(of: String(char)) {
                    digitsString.append(String(i+2))
                }
            }
        }
        if digitsString.count > 0 {
            return digitsString
        }
        else{
            return ""
        }
    }
}
