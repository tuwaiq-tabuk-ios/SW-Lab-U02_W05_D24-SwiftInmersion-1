//
//  ViewController.swift
//  Prototype-Delegaete-TextField-YousefALbalawi
//
//  Created by Yousef Albalawi on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var demoe2TexstField: UITextField!
  
  @IBOutlet weak var demoeTexstField: UITextField!
  
  var counter = 5
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoeTexstField.delegate = self

  }
  func textFieldShouldBeginEditing(
    _ textField: UITextField
  ) -> Bool {
    print(#function)
    
    return true
    
    //return false
    
  }
  
  func textFieldDidBeginEditing(_
          textField: UITextField) {
    print(#function)
  }
  func textFieldShouldEndEditing(_
          textField: UITextField) -> Bool {
    print(#function)
    if counter <= 5 {
      return false
    }
    else{
      return true
    }
    
  }
 
  
  
}
