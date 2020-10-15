//
//  LocationInfoTableViewController.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import UIKit

class LocationInfoTableViewController: UITableViewController, LocationInfoTableViewControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var presenter: LocationInfoPresenterProtocol!

    private lazy var locationInfo = presenter.makeDetailInfo()

    public var dataSource: [[LocationInfoViewModel.InfoRowTable]] {
        return [locationInfo.mainInfoTableView, locationInfo.additionalInfoTableView]
    }
    
}
