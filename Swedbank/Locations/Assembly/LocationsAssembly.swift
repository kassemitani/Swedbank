//
//  LocationsAssembly.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import UIKit

class LocationsAssembly {
    /// The default entry point for the module Locations.
    static func `default`(for region: BankRegion) -> UIViewController {

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Locations") as!  LocationsTableViewController
        viewController.title = region.name
        viewController.router = LocationsRouter()

        let presenter: LocationsPresenterProtocol = LocationsPresenter()
        presenter.region = region
        
        viewController.presenter = presenter
        return viewController
    }

}
