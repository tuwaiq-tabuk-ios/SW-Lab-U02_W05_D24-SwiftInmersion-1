//
//  ViewController.swift
//  Prototype-Delegate-Textfield-RessamMohammed
//
//  Created by Ressam Al-Thebailah on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
  
  @IBOutlet weak var demoTextField: UITextField!
  var counter = 5
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoTextField.delegate = self
  }
 
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
    return true
    //return false
  }
  
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
  }
  
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    print(#function)
    if counter <= 5 {
      return false
    } else {
      return true
    }
  }
}

