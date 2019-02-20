//  CreateAccountVC.swift

import UIKit

class CreateAccountVC: UIViewController {
    
    // outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func creatAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {
            return }
        guard let password = passwordTxt.text , passwordTxt.text != "" else {
            return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        print("Logged IN", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
       performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
