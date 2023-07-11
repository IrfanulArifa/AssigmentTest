//
//  FoodViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 10/07/23.
//

import UIKit

class FoodViewController: UIViewController {
  
  @IBOutlet weak var foodContainView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    foodContainView.delegate = self
    foodContainView.dataSource = self
    foodContainView.register(UINib(nibName: "FoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodCollectionViewCell")
    
  }
}

extension UIViewController: UICollectionViewDataSource{
  
  public func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return dummyFoodData.count
  }
  
  public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if let data = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell", for: indexPath) as? FoodCollectionViewCell {
      let food = dummyFoodData[indexPath.row]
      data.foodImage.image = food.image
      data.foodTitle.text = food.meatTitle
      return data
    }
    return UICollectionViewCell()
    
  }
}

extension UIViewController:UICollectionViewDelegate{
  public func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    let storyboard = UIStoryboard(name: "DetailFoodView", bundle: nil)
    guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
    
    let shop = dummyFoodData[indexPath.row]
    
    vc.configure(data: shop)
    
    navigationController?.pushViewController(vc, animated: true)
  }
}

extension UIViewController:UICollectionViewDelegateFlowLayout{
  public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 20, left: 40, bottom: 20, right: 40)
  }
}
