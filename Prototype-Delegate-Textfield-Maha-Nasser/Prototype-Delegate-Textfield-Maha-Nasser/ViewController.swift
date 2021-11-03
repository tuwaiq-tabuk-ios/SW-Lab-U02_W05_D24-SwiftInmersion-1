//
//  ViewController.swift
//  Prototype-Delegate-Textfield-Maha-Nasser
//
//  Created by Maha S on 03/11/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  var counter = 5
  
  @IBOutlet weak var demoTextField: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    
    
    demoTextField.delegate = self
  }
  
  @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
    demoTextField.resignFirstResponder()
  }
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
    return true
  }
  
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
    
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    print(#function)
    if counter <= 5 {
      return false
    }else {
      return true
    }
  }
  
}

