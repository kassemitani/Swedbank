//
//  DefaultRouterProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import UIKit

/// Default Protocol for any Router for each module.
protocol DefaultRouterProtocol {

    /// Makes segue from the current view controller to the new view controller.
    /// - parameter viewController: new View controller
    /// - parameter currentViewController: current View controller
    func push(_ viewController: UIViewController, on currentViewController: UIViewController)

}

/// Default implementation for DefaultRouterProtocol
extension DefaultRouterProtocol {

    /// If the current view controller has a navigation controller, the new view controller will be pushed on that navigation controller.
    /// Otherwise, the new view controller will be present on the current view controller.
    /// - parameter viewController: new View controller
    /// - parameter currentViewController: current View controller
    func push(_ viewController: UIViewController, on currentViewController: UIViewController) {
        if let nv = currentViewController.navigationController {
            nv.pushViewController(viewController, animated: true)
        } else {
            currentViewController.present(viewController, animated: true, completion: nil)
        }
    }

}

