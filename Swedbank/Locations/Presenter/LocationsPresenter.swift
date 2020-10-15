//
//  LocationsPresenter.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import Foundation

class LocationsPresenter: LocationsPresenterProtocol {

    /// The entity of 'Bank Region' on the basis of which the list of 'Bank Location' will be get.
    var region: BankRegion!

    /// Returns list of 'Bank locations' based on the entity of 'Bank Region'.
    /// Objects are sorted by type.
    func getBankLocations() -> [BankLocation] {
        guard let locations = region.locations?.allObjects as? [BankLocation] else { return [] }
        return locations.sorted { $0.idType < $1.idType }
    }
}
