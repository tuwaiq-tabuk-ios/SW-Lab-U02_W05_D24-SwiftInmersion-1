//
//  ViewController.swift
//  Prototype-Delegate-TextField-MarzougAlmukhlif
//
//  Created by Marzouq Almukhlif on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
  
  @IBOutlet weak var textField: UITextField!
  
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func dismissKeyboard() {
    textField.resignFirstResponder()
  }
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
    return true
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
  }
  
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    label.text = textField.text
    print(#function)
    return true
  }
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    print(#function)
    if textField.text!.lengthOfBytes(using: .utf8) <= 6 {
    let set = CharacterSet(charactersIn: "1234567890.")
    let inverted = set.inverted
    let filtered = string.components(separatedBy: inverted).joined(separator: "")
    return filtered == string
    } else {
      let set = CharacterSet(charactersIn: "")
      let inverted = set.inverted
      let filtered = string.components(separatedBy: inverted).joined(separator: "")
      return filtered == string
    }

  }
  
  
  
  
}

