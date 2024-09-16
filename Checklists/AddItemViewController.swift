//
//  AddItemViewController.swift
//  Checklists
//
//  Created by 양금용 on 9/14/24.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var doneBarButton: UIBarButtonItem!
  
  override func viewDidLoad() {
      super.viewDidLoad()
      navigationItem.largeTitleDisplayMode = .never
    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    textField.becomeFirstResponder()
  }
  
    @IBAction func cancel() {
      navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
      print("Contents of the text field: \(textField.text!)")
      
      navigationController?.popViewController(animated: true)
    }
  
  // MARK: - Table View Delegates
  override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return nil
  }
  
  // MARK: - Text Field Delegates
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let oldText = textField.text!
    let stringRange = Range(range, in: oldText)!
    let newText = oldText.replacingCharacters(in: stringRange, with: string)
    
    doneBarButton.isEnabled = !newText.isEmpty
    
    return true
  }
  
  func textFieldShouldClear(_ textField: UITextField) -> Bool {
    doneBarButton.isEnabled = false
    return true
  }
}
