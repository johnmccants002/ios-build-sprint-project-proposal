//
//  UserGroupViewController.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController {
    
    var groupController : GroupController?

  
    @IBOutlet weak var groupTextField: UITextField!
    
    @IBOutlet weak var addGroupButton: UIButton!
    
    @IBAction func addGroupButtonTapped(_ sender: Any) {
        createGroup()
        dismiss(animated: true) {
            guard let groupController = self.groupController else {return}
            groupController.loadFromPersistenceStore()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func createGroup() {
        guard let groupText = groupTextField.text, groupText.isEmpty == false, let group = groupController else { return }
        let newGroup = Group(name: groupText, totalMembers: 1, joined: true)
        group.groups.append(newGroup)
        group.saveToPersistenceStore()
        
    }

}




//extension AddGroupViewController: UIPickerViewDataSource, UIPickerViewDelegate {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        1
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
////        timeGroup.count
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
////        timeGroup[row]
//    }
//    
//    
//}
