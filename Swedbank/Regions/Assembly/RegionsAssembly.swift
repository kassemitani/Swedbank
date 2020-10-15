//
//  RegionsAssembly.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import UIKit

class RegionsAssembly {

    /// The default entry point for the module Regions.
    static func `default`() -> UIViewController {

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Regions") as! RegionsTableViewController
        viewController.router = RegionsRouter()

        let storeManager: RegionsStoreManagerProtocol = RegionsStoreManager()
        storeManager.coreDataStack = CoreDataStack.shared

        let presenter: RegionsPresenterProtocol = RegionsPresenter()
        presenter.networkManager = RegionsNetworkManager()
        presenter.storeManager = storeManager
        presenter.viewController = viewController

        viewController.presenter = presenter

        return viewController
    }

}
