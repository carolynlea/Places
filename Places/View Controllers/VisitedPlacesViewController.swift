//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Carolyn Lea on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {

    var mapViewController: MapViewController!
    var placesTableViewController: PlacesTableViewController!
    var placeController: PlaceController?
    
    func placesWasSelected(place: Place) {
        mapViewController.location = place.location
    }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let tableVC = segue.destination as? PlacesTableViewController {
            placesTableViewController = tableVC
            placesTableViewController.placeController = placeController
            placesTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController {
            mapViewController = mapVC
        }
    }
    

}
