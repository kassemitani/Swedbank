//
//  RegionsRouter.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import UIKit
class RegionsRouter: RegionsRouterProtocol {

    /// Makes segue to default View controller of the module 'Locations'.
    func goToLocations(for region: BankRegion, on currentVC: UIViewController) {
        let vc = LocationsAssembly.default(for: region)
        push(vc, on: currentVC)
    }

}
