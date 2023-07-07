//
//  RegisterViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class RegisterViewController: UIViewController {
  @IBOutlet weak var usernameTF: UITextField!
  @IBOutlet weak var fullnameTF: UITextField!
  @IBOutlet weak var passwordTF: UITextField!{
    didSet{
      passwordTF.isSecureTextEntry = true
    }
  }
  @IBOutlet weak var rePasswordTF: UITextField!{
    didSet{
      rePasswordTF.isSecureTextEntry = true
    }
  }
  @IBOutlet weak var registerBtn: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func registerClicked(_ sender: Any) {
    let isValidPassword = passwordTF.validPassword(passwordTF.text ?? "")
    let isValidRePassword = rePasswordTF.validPassword(rePasswordTF.text ?? "")
    if(isValidPassword || isValidRePassword) && (passwordTF.text == rePasswordTF.text){
      let home = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
      home.navigationItem.hidesBackButton = true
      self.navigationController?.pushViewController(home, animated: true)
    } else if (isValidPassword || isValidRePassword) && (passwordTF.text != rePasswordTF.text) {
      AlertManager.showDifferentPasswordAlert(on: self)
    } else if (!usernameTF.hasText || !fullnameTF.hasText || !passwordTF.hasText || !rePasswordTF.hasText) {
      AlertManager.showEmptyPasswordAlert(on: self)
    }
  }
  
  @IBAction func loginClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
}
