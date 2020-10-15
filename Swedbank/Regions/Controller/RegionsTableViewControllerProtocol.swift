//
//  RegionsTableViewControllerProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//
import CoreData

/// ViewController of module 'Regions'.
protocol RegionsTableViewControllerProtocol: class, NSFetchedResultsControllerDelegate {

    var router: RegionsRouterProtocol! { get set }
    var presenter: RegionsPresenterProtocol! { get set }

    /// Presents an alert with text description of the error.
    func showError(_ error: Error)

}
