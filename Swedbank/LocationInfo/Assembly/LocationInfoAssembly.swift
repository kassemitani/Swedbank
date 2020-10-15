//
//  LocationInfoAssembly.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import UIKit

class LocationInfoAssembly {
    
    /// The default entry point for the module Location Info.
    static func `default`(for location: BankLocation) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "LocationInfo") as!  LocationInfoTableViewController
        viewController.title = location.name

        let presenter: LocationInfoPresenterProtocol = LocationInfoPresenter()
        presenter.location = location

        viewController.presenter = presenter

        return viewController
    }
}
