//
//  CoreDataStackProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import CoreData
/// Provides the basic functionality of Core Data Stack.
protocol CoreDataStackProtocol {

    /// Provides access to Main Persistent Container of the application.
    var persistentContainer: NSPersistentContainer { get }

}
