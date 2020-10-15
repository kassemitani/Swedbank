//
//  RegionsViewModel.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//


import CoreData

/// Presenter of module 'Regions'.
class RegionsPresenter: RegionsPresenterProtocol {

    weak var viewController: RegionsTableViewControllerProtocol!
    var networkManager: RegionsNetworkManagerProtocol!
    var storeManager: RegionsStoreManagerProtocol!

    /// Gets 'Fetched Results Controller' from the StoreManager,
    /// sets the ViewController as a delegate, and returns it.
    func makeDataController() -> NSFetchedResultsController<NSFetchRequestResult> {
        let resultsController = storeManager.makeResultsController()
        resultsController.delegate = viewController
        return resultsController
    }

    /// Async downloads and parses data for each country and saves it in the local storage.
    /// - parameter completion: Will perform after all updates are completed.
    func asyncUpdateData(completion: @escaping () -> Void) {

        let dispatchGroup = DispatchGroup()
        Country.allCountries.forEach { country in

            dispatchGroup.enter()
            DispatchQueue.global(qos: .userInitiated).async {

                self.networkManager.loadData(for: country, completion: { (result) in
                    defer { dispatchGroup.leave() }
                    switch result {
                    case .success(let data):
                        self.storeManager.save(data, for: country.title)
                    case .failure(let error):
                        DispatchQueue.main.async {
                            self.viewController.showError(error)
                        }
                    }

                })
            }
        }

        dispatchGroup.notify(queue: .main) {
            DispatchQueue.main.async {
                completion()
            }
        }
    }

}

