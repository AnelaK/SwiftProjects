//
//  ViewController.swift
//  LetterCruncher
//
//  Created by Karamustafic, Anela on 9/22/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var displayStringLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    let model = LetterCruncher ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
        inputTextField.becomeFirstResponder()
        inputTextField.autocapitalizationType = UITextAutocapitalizationType.allCharacters
        
        displayStringLabel.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: -UITextFieldDelegate
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        if let current = inputTextField.text{ //if there is new changes in text field
            if string.count == 0{
                return true //processed backspace
            }
            else{
                if model.isValidInput(inputString: current){
                    return CharacterSet.uppercaseLetters.isSuperset(of: CharacterSet(charactersIn: string))
                }
                else{
                    return false //the string is too big
                }
            }
        }
        else{ //there are no new changes
            return false
        }
    }
    
    //MARK: -Actions
    @IBAction func onTextInput(_ sender: UITextField) {
        print("entered")
                if let text = sender.text{
                    displayStringLabel.text = model.makeDigitsString(inputString: text)
                }
                else{
                    displayStringLabel.text = ""
                }
    }
    
    @IBAction func onTapGesture(sender: AnyObject) {
        inputTextField?.resignFirstResponder()
    }
    
    
    


}

