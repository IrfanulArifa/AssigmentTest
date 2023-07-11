//
//  HistoryTableViewCell.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
  @IBOutlet weak var buildingImage: UIImageView!
  @IBOutlet weak var buildingInformation: UILabel!
  @IBOutlet weak var buildingStreet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
