//
//  LoginViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class LoginViewController: UIViewController {
  
  
  @IBOutlet weak var usernameTF: UITextField!
  
  @IBOutlet weak var passwordTF: UITextField!{
    didSet{
      passwordTF.isSecureTextEntry = true
    }
  }
  @IBOutlet weak var loginBtn: UIButton!{
    didSet{
      loginBtn.isEnabled = false
      loginBtn.backgroundColor = UIColor(named: "invalidColor")
    }
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    usernameTF.addTarget(self, action: #selector(validatingPassword), for: .editingChanged)
    passwordTF.addTarget(self, action: #selector(validatingPassword), for: .editingChanged)
    
  }
  
  @objc private func validatingPassword(){
    let isValid = passwordTF.validPassword(passwordTF.text ?? "")
    if isValid && usernameTF.hasText{
      loginBtn.isEnabled = true
      loginBtn.backgroundColor = UIColor(named: "validColor")
    } else {
      loginBtn.isEnabled = false
      loginBtn.backgroundColor = UIColor(named: "invalidColor")
    }
  }
  
  @IBAction func forgotPasswordClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "ForgotView", bundle: nil).instantiateViewController(withIdentifier: "ForgotViewController") as! ForgotViewController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
  
  @IBAction func loginNowClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "UITabBarController") as! UITabBarController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
  
  @IBAction func registerButtonClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "RegisterView", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
}
