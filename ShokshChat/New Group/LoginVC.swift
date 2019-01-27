//  LoginVC.swift

import UIKit

class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
  /*  @IBAction func creatAccountPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_Account, sender: nil)
    }*/
}
