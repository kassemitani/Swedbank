//
//  LocationsRouter.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import UIKit

class LocationsRouter: LocationsRouterProtocol {

    /// Makes segue to Location Info.
    func goToDetailInfo(for location: BankLocation, on currentVC: UIViewController) {
        let vc = LocationInfoAssembly.default(for: location)
        push(vc, on: currentVC)
    }

}
