//
//  UITextFieldExtension.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//
import Foundation
import UIKit

extension UITextField {
  
  func validEmail(_ value:String) -> Bool{
    let reqularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
    if predicate.evaluate(with: value){
      return true
    }
    return false
  }
  
  func validPassword(_ value:String) -> Bool{
    let regularExpression = "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
    if predicate.evaluate(with: value){
      return true
    }
    return false
  }
  
  func validNumber(_ value:String) -> Bool{
    let regularExpression = "[+6280][0-9]{10,14}"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
    if predicate.evaluate(with: value){
      return true
    }
    return false
  }
  
  func validKTP(_ value:String) -> Bool{
    let regularExpression = "[0123456789]{16}"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
    if predicate.evaluate(with: value){
      return true
    }
    return false
  }
}
