//
//  ViewController.swift
//  protoType-Delegate-TextFIld-Abdulaziz-Albalwi
//
//  Created by عبدالعزيز البلوي on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

 
  @IBOutlet weak var value: UILabel!
  @IBOutlet weak var demoTextField: UITextField!
  var counter = 5
  override func viewDidLoad() {
    super.viewDidLoad()
    demoTextField.delegate = self
  }
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
    // return false
    return true
    
  }
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    value.text = textField.text
    print(#function)
    if counter <= 5{
      return true
    }else{
      return true
      
    }
  }
  
  
  @IBAction func dismissKeyboard() {
    demoTextField.resignFirstResponder()
  }
  
}

