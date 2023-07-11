//
//  HomeViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class HomeViewController: UIViewController {

  @IBOutlet weak var checkinBtn: UIButton!{
    didSet{
      checkinBtn.layer.cornerRadius = checkinBtn.frame.width/2
      checkinBtn.backgroundColor = UIColor(named: "invalidBtnColor")
      checkinBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
      checkinBtn.titleLabel?.textColor = .white
    }
  }
  override func viewDidLoad() {
        super.viewDidLoad()

        
    }
  
  @IBAction func checkinBtnClicked(_ sender: UIButton) {
    if checkinBtn.backgroundColor == UIColor(named: "invalidBtnColor"){
      checkinBtn.setTitle("CHECK IN", for: .normal)
      checkinBtn.backgroundColor = UIColor(named: "validColor")
    } else if checkinBtn.backgroundColor == UIColor(named: "validColor"){
      checkinBtn.setTitle("CHECK OUT", for: .normal)
      checkinBtn.backgroundColor = UIColor(named: "invalidBtnColor")
    }
  }
  
}
