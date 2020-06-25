//
//  VoteForLocationViewController.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    var locationController: LocationController?
    
    @IBOutlet weak var enterLocationTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addLocationTappedButton(_ sender: Any) {
        guard let locationName = enterLocationTextField.text, !locationName.isEmpty else { return }
        
        locationController?.createLocation(with: locationName)
        self.navigationController?.popViewController(animated: true)
    }
    
    
}



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
