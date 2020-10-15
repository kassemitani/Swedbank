//
//  CoreDataStack.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import CoreData
class CoreDataStack: CoreDataStackProtocol {

    /// Returns a shared singleton of Core Data Stack, that gives a reasonable default behavior.
    static let shared = CoreDataStack()

    private init() { }

    // MARK: CORE DATA STACK

    /// Main Persistent container of Core Data Stack.
    lazy var persistentContainer: NSPersistentContainer = {

        let container = NSPersistentContainer(name: "Swedbank")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                if let sourceURL = error.userInfo["sourceURL"] as? URL {
                    if FileManager.default.fileExists(atPath: sourceURL.path) {
                        try? FileManager.default.removeItem(atPath: sourceURL.path)
                        print("Error of initialize database, the storage is deleted [\(sourceURL.path)]")
                    }
                }
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })

        container.viewContext.automaticallyMergesChangesFromParent = true
        return container
    }()

}
