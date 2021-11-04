//
//  ViewController.swift
//  Prototype-Delegate-TwxtFledl
//
//  Created by arwa balawi on 29/03/1443 AH.
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
  
  func textFieldShouldBeginEditing(_textField: UITextField) -> Bool {
    
    print(#function)
    //return fals
    return true
  }
  
  func textFieldDidBeginEditing(_textField: UITextField) {
    
     print(#function)
  }
  
  
  func textFieldShouldEndEditing(_textField: UITextField) -> Bool {
    
    if counter <= 5 {
      return false
    }else {
      return true
    }
  }
}

