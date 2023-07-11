//
//  HistoryViewController.swift
//  AssigmentTest
//
//  Created by Irfanul Arifa on 07/07/23.
//

import UIKit

class HistoryViewController: UIViewController {
  
  @IBOutlet weak var historyTableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    historyTableView.delegate = self
    historyTableView.dataSource = self
    historyTableView.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "HistoryCell")
  }
}

extension UIViewController: UITableViewDataSource{
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dummyData.count
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath) as? HistoryTableViewCell {
      let history = dummyData[indexPath.row]
      cell.buildingImage.image = history.image
      cell.buildingInformation.text = history.buildingInformation
      cell.buildingStreet.text = history.buildingStreet
      return cell
    } else {
      return UITableViewCell()
    }
  }
}

extension UIViewController:UITableViewDelegate{
  
}
