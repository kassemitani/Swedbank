//
//  LocationsPresenterProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import Foundation

protocol LocationsPresenterProtocol: class {

    /// The entity of 'Bank Region' on the basis of which the list of 'Bank Location' will be get.
    var region: BankRegion! { get set }

    /// Returns list of 'Bank locations' based on the entity of 'Bank Region'.
    /// Objects are sorted alphabetically (without regard to case).
    func getBankLocations() -> [BankLocation]
}
