//
//  LocationsTableViewControllerProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import Foundation

protocol LocationsTableViewControllerProtocol: class {
    
    var router: LocationsRouterProtocol! { get set }
    var presenter: LocationsPresenterProtocol! { get set }
}
