//
//  RegionsStoreManagerProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import CoreData

protocol RegionsStoreManagerProtocol: class {

    var coreDataStack: CoreDataStackProtocol! { get set }

    /// Saves data about 'Bank Locations' from the JSON-data.
    /// If an object already exists, it will only be updated.
    /// Otherwise, a new one will be created.
    /// Non-actual objects will be deleted.
    /// - parameter locations: JSON-data array for 'Bank Location'.
    /// - parameter countryName: Country's name for which is needed to save this data.
    func save(_ locations: [BankLocationJSON], for countryName: String)

    /// Constructs and returns 'Fetched Results Controller' for 'Bank Region' grouped by Country's name.
    /// All data is sorted alphabetically (both, sections and rows).
    func makeResultsController() -> NSFetchedResultsController<NSFetchRequestResult>

}
