
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var demoTextField: UITextField!

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    demoTextField.delegate = self
  }
  
  
 func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    print(#function)
//    return false
    return true
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print(#function)
  }

  
  func textFieldDidEndEditing(_ textField: UITextField) {
    print(#function)

    }
  }


