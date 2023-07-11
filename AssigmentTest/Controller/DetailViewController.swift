//
//  DetailViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 10/07/23.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var detailImage: UIImageView!
  @IBOutlet weak var detailTitle: UILabel!
  @IBOutlet weak var detailIngredients: UILabel!
  @IBOutlet weak var detailStep: UILabel!
  
  private var model: FoodModel?
  
  func configure(data:FoodModel){
    model = data
  }
  
  private func applyModel() {
    
    guard let unwrappedModel = model else {
      print("Model is nil")
      return
    }
    
    detailImage.image = unwrappedModel.image
    detailTitle.text = unwrappedModel.meatTitle
    detailIngredients.text = unwrappedModel.meatIngredients
    detailStep.text = unwrappedModel.meatInstructions
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    applyModel()
    // Do any additional setup after loading the view.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
