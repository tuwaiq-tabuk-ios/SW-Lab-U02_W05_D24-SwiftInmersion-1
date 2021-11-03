//
//  ViewController.swift
//  p_
//
//  Created by azooz alhwiti on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  
  @IBOutlet weak var demoTextfield: UITextField!
  
  var counter = 5

  override func viewDidLoad() {
    super.viewDidLoad()

    demoTextfield.delegate = self

  }
  func textFieldShouldBeginEditing(
    _ textField: UITextField)
  -> Bool {
    print(#function)

    return true

  }
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)

  }
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    print(#function)
    if counter <= 5{
      return false
    }
        else{
          return true
        }

    }
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      textField.resignFirstResponder();
      return true;
  }
  func textFieldShouldClear(_ textField: UITextField) -> Bool {
    print(#function)
    return true
  }
  }
