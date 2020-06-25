//
//  LocationsUpvoteViewController.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class LocationsUpvoteViewController: UIViewController {
    
    let locationController = LocationController()
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let locations = segue.destination as? AddLocationViewController else { return }
        
        locations.locationController = locationController
    }
    
}

extension LocationsUpvoteViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationController.locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as? LocationTableViewCell else { return UITableViewCell() }
        
        let location = locationController.locations[indexPath.row]
        
        cell.location = location
        
        return cell
    }
    
    
    
}
