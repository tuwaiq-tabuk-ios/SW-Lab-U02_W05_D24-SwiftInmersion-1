//
//  ViewController.swift
//  Prototype-Delegate-TextField-"Bushra nazal Alatawi'
//
//  Created by bushra nazal alatwi on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var demoTextField: UITextField!
  var counter = 5
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoTextField.delegate = self
  }
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
  //  return false
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

