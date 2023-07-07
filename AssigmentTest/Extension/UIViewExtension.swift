//
//  UIViewExtension.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import Foundation
import UIKit

extension UIView{
  @IBInspectable var cornerRadius: CGFloat {
    get { return self.cornerRadius }
    set {
      self.layer.cornerRadius = newValue
    }
  }

  @IBInspectable var borderWidth: CGFloat {
    get { return self.borderWidth }
    set {
      self.layer.borderWidth = newValue
    }
  }
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
      let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
      let mask = CAShapeLayer()
      mask.path = path.cgPath
      layer.mask = mask
    }
  }
