//
//  LocationsRouterProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import UIKit

/// Router of module Locations.
protocol LocationsRouterProtocol: DefaultRouterProtocol {
    
    /// Makes segue to Location Info.
    func goToDetailInfo(for: BankLocation, on currentVC: UIViewController)
    
}
