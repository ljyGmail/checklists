//
//  AddItemViewController.swift
//  Checklists
//
//  Created by 양금용 on 9/14/24.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
      super.viewDidLoad()
      navigationItem.largeTitleDisplayMode = .never
    }
  
    @IBAction func cancel() {
      navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
      navigationController?.popViewController(animated: true)
    }
}
