//
//  ViewController.swift
//  Prototype-Delegate-TextField-AtheerAbdullah
//
//  Created by Atheer abdullah on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet weak var demoTextField: UITextField!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    demoTextField.delegate = self
  }
  func textFieldShouldbeginediting( textField: UITextField ) -> Bool {
    print(#function)
    return true
  }
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
  }
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    print(#function)
  }
  }
  
  
  
  




