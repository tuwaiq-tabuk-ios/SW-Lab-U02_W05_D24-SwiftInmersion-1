//
//  ViewController.swift
//  Prototype-Delegate-Textfiled
//
//  Created by ahlam  on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,
                      UITextFieldDelegate {
  
  @IBOutlet weak var demoTextField: UITextField!
  var counter = 5
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoTextField.delegate = self
    
    
  }
  
  func textFieldShouldClear(_ textField: UITextField) -> Bool {
    print(#function)
    //  return false
    return true
    
  }
  func textFieldDidEndEditing(_ textField: UITextField) {
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
