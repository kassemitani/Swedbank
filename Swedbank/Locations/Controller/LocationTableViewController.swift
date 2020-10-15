//
//  LocationTableViewController.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import UIKit

class LocationsTableViewController: UITableViewController, LocationsTableViewControllerProtocol {

    var router: LocationsRouterProtocol!
    var presenter: LocationsPresenterProtocol!

    public lazy var dataSource = presenter.getBankLocations()
    
}
