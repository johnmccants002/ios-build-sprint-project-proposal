//
//  LocationTableViewCell.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {

    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var voteButton: UIButton!
    @IBOutlet weak var rankLabel: UILabel!
    
  
    
    var location: Location? {
        didSet {
            updateViews()
        }
    }
    
    
    var count = 1
    let locationController = LocationController()
    
    @IBAction func voteButtonTapped(_ sender: Any) {
        
        
        count = count + 1
        rankLabel.text = "\(count)"
        
        //locationController.addRank()
        //rankLabel.text = "\(count)"
        //guard let rankNumber: Int = location?.rank else { return }
        
        print("vote tapped!")
    }
    
    
    
    
    private func updateViews() {
        guard let location = location else { return }
        
        locationNameLabel.text = location.name
    }
}
