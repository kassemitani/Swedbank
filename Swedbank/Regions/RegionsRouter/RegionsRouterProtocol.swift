//
//  RegionsRouterProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import UIKit
protocol RegionsRouterProtocol: DefaultRouterProtocol {

    /// Makes segue to default View controller of the module 'Locations'.
    func goToLocations(for region: BankRegion, on currentVC: UIViewController)

}
