//
//  ViewController.swift
//  Prototype-Delegate-Textfild-'BushraOudah'
//
//  Created by Bushra alatwi on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet weak var demoTextField: UITextField!
  var counter = 5
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoTextField.delegate = self
  }
  
    func textFieldShouldBeginEditing(textFiled: UITextField) -> Bool {
      print(#function)
    
//  return false
       return true
  }
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
    
  }
  func textFieldShould(_ textField: UITextField) {
    print(#function)
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    if counter <= 5 {
      return false
  }
    else{
      return true
    }
  }
}

