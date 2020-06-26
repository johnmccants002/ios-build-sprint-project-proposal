//
//  LocationController.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


class LocationController {
    
    init() {
        loadFromPersistentStore()
    }
    
    var locations: [Location] = []
    

    
    
    func createLocation(with name: String) {
        let location = Location(name: name)
        
        locations.append(location)
        
        saveToPersistanceStore()
    }
    
    
    var persistantFileURL: URL? {
        let fileManagager = FileManager.default
        
        guard let documentsDir = fileManagager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
        let locationsURL = documentsDir.appendingPathComponent("locations.plist")
        
        return locationsURL
    }

    func saveToPersistanceStore () {
        
        guard let fileURL = persistantFileURL else { return }
        
        do {
            
            let encoder = PropertyListEncoder()
            let locationsData = try encoder.encode(locations)  // IKEA reference
            
            try locationsData.write(to: fileURL)
            
        } catch {
            print("Error encoding star array: \(error)")
        }
    }
   
    func loadFromPersistentStore() {
        
        guard let fileURL = persistantFileURL else { return }
        
        do {
            
            let starsData = try Data(contentsOf: fileURL)
            
            let decoder = PropertyListDecoder()
            
            let locationsArray = try decoder.decode([Location].self, from: starsData)
            
            self.locations = locationsArray
        
        } catch {
            print("Error decoding stars: \(error)")
            
        }
        
    }
    
    

}



   
