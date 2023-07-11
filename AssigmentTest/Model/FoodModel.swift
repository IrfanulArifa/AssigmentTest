//
//  FoodModel.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 10/07/23.
//

import Foundation

import UIKit

struct FoodModel{
  let image: UIImage
  let meatTitle:String
  let meatIngredients: String
  let meatInstructions: String
}

let dummyFoodData = [
  FoodModel(
    image: UIImage(named: "tortang")!,
    meatTitle: "Tortang Talong",
    meatIngredients: "4 Eggs Plants, 2 Eggs, 1 tsp Salt, 4 tsp Olive Oil",
    meatInstructions: """
      0. Grill the eggplant until the color of skin turns almost black
      1. Let the eggplant cool for a while then peel off the skin. Set aside.
      2. Crack the eggs and place in a bowl
      3. Add salt and beat
      4. Place the eggplant on a flat surface and flatten using a fork.
      5. Dip the flattened eggplant in the beaten egg mixture
      6. Heat the pan and pour the cooking oil
      7. Fry the eggplant (that was dipped in the beaten mixture). Make sure that both sides are cooked. Frying time will take you about 3 to 4 minutes per side on medium heat.
    """
  ), FoodModel(
    image: UIImage(named: "eggPlant")!,
    meatTitle: "Grilled eggplant with coconut milk",
    meatIngredients: "6 Eggs Plants, 1 can Coconut Milk, 1 tsp Lemon Juice, 1 tsp Salt, 4 sticks Union",
    meatInstructions: """
      1. Prepare the eggplants for grilling by pricking them all over with a fork. This is so it won’t burst during the grilling process as the natural water in it heats up.
      2. Grill the eggplants, turning them over frequently to ensure even cooking. Grill until the skins are dark brown, even black and the eggplant is soft when you touch it.
      3. Soak the grilled eggplant in a bowl of water to cool it down. Peel the skin off the eggplant. Place the whole eggplants in a shallow dish (my mom actually cuts the eggplant into small, bite-sized pieces).
      4. In a small mixing bowl, mix together the coconut milk or cream, lemon powder, salt and hot pepper. Mix until the lemon powder and salt dissolve. Taste, then adjust the amount of lemon powder, salt and hot pepper to your liking. Pour the mixture over the eggplant. Sprinkle the green onions over the eggplant and coconut milk. Stir gently to combine.
    """
  )
]
