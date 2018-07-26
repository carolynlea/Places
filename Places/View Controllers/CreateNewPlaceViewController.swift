//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Carolyn Lea on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextfield: UITextField!
    @IBOutlet weak var longitudeTextfield: UITextField!
    var placeController: PlaceController?

    @IBAction func createNewPlace(_ sender: Any) {
        guard let name = nameTextField.text,
        let latitudeString = latitudeTextfield.text,
        let longitudeString = longitudeTextfield.text,
        let latitude = Double(latitudeString),
            let longitude = Double(longitudeString) else {return}
        
        placeController?.createPlace(withName: name, latitude: latitude, longitude: longitude)
    }
    
}
