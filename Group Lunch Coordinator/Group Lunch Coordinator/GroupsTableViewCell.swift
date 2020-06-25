//
//  GroupsTableViewCell.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var totalMembersLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    
    var group : Group? {
        didSet {
            updateViews()
        }
        willSet {
            updateViews()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateViews() {
        guard let group = group else {
            return
        }
        switch group.joined {
        case true:
            joinButton.setTitle("Joined", for: .normal)
        case false:
            joinButton.setTitle("Join Group", for: .normal)
        }
        if group.totalMembers == 1 {
            totalMembersLabel.text = "1 member"
        } else {
        totalMembersLabel.text = "\(group.totalMembers) members"
        }
        groupLabel.text = group.name
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func joinButtonTapped(_ sender: Any) {
        if joinButton.titleLabel?.text == "Join Group" {
            joinButton.setTitle("Joined", for: .normal)
            guard var group = group else {return}
            group.joined.toggle()
            group.totalMembers += 1
        } else if joinButton.titleLabel?.text == "Joined" {
            joinButton.setTitle("Join Group", for: .normal)
            guard var group = group else {return}
            group.totalMembers -= 1
            group.joined.toggle()
        }
}
}
