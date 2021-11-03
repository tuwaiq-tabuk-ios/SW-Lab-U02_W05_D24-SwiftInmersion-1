
import UIKit

class ViewController: UIViewController,
  UITextFieldDelegate {
  
  @IBOutlet weak var demoTextFild:
    UITextField!
  var counter = 5
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoTextFild.delegate = self
    
  }
  private func textFieldShouldBeginEditing (
    textField: UITextField
  ) -> Bool {
    print(#function)
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    print(#function)
  }
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
    return true
  }
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {

      textField.resignFirstResponder()

      return true

  }
}

