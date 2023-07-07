//
//  ViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


  @IBAction func loginBtnClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
  
  @IBAction func signUpButtonClicked(_ sender: Any) {
    let vc = UIStoryboard(name: "RegisterView", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
    self.navigationController?.pushViewController(vc, animated: true)
    vc.navigationItem.hidesBackButton = true
  }
}

