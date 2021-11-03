//
//  ViewController.swift
//  Prototype-Delegate-Textfield-Areej_Alanze
//
//  Created by A A on 03/11/2021.
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
    return true
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

