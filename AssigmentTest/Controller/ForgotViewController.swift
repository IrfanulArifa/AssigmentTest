//
//  ForgotViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class ForgotViewController: UIViewController {

  @IBOutlet weak var noKTP: UITextField!
  
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
  override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  @IBAction func resetBtnClicked(_ sender: Any) {
    let isValidKtp = noKTP.validKTP(noKTP.text ?? "")
    let isValidPassword = passwordTF.validPassword(passwordTF.text ?? "")
    let isValidRePassword = rePasswordTF.validPassword(rePasswordTF.text ?? "")
    if (!noKTP.hasText || !passwordTF.hasText || !rePasswordTF.hasText){
      AlertManager.showEmptyPasswordAlert(on: self)
    } else if !isValidKtp {
      AlertManager.invalidKTP(on:self)
    } else if (!isValidPassword || !isValidRePassword){
      AlertManager.showNotStrongPasswordAlert(on: self)
    } else if (isValidPassword && isValidRePassword) && (passwordTF.text != rePasswordTF.text) {
      AlertManager.showDifferentPasswordAlert(on: self)
    } else if (isValidPassword && isValidRePassword) && (passwordTF.text == rePasswordTF.text ){
      let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
      self.navigationController?.pushViewController(vc, animated: true)
      vc.navigationItem.hidesBackButton = true
    }
  }
  
  @IBAction func loginBtnClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
}
