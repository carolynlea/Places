//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Carolyn Lea on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController {

    var mapViewController: MapViewController!
    var placesTableViewController: PlacesTableViewController!
    

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let tableVC = segue.destination as? PlacesTableViewController {
            placesTableViewController = tableVC
        }
        
        if let mapVC = segue.destination as? MapViewController {
            MapViewController = mapVC
        }
    }
    

}
