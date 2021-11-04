//
//  ViewController.swift
//  prototype-Delegate-TextField-class
//
//  Created by Mohammed on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var dmoTextField: UITextField!
    
    var counter: Int = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dmoTextField.delegate = self
       
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        if counter <= 5 {
            return true
        }
        else {
                return true
            } 
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let allowedCharacters = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuioppasdfghjklzxcvbnm,?!"
        let allowedCharcterSet = CharacterSet(charactersIn: allowedCharacters)
        let typedCharcterSet = CharacterSet(charactersIn: string)
        return allowedCharcterSet.isSuperset(of: typedCharcterSet)
    }
    
    
    @IBAction func dissMissKeyBoard() {
        dmoTextField.resignFirstResponder()
    }
    
    }


