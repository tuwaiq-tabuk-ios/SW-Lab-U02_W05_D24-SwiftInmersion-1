//
//  ViewController.swift
//  Prototype-Delegat
//
//  Created by macbook air on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  
  @IBOutlet weak var demoTextField: UITextField!
  
  var counter = 5
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    demoTextField.delegate = self
  }
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
    //return fals
    return true
    
  }
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
    
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    if counter <= 5 {
      return false
    } else {
      return true
      
      
    }
    
    
  }
}


