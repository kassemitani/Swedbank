//
//  RegionsNetworkManager.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import CoreData

class RegionsNetworkManager: RegionsNetworkManagerProtocol {
    
    private var dataTask: URLSessionDataTask?
    typealias TaskResultJSON = TaskResult<[BankLocationJSON]>

    func loadData(for country: Country, completion: @escaping (TaskResultJSON) -> Void) {

        let request = RegionsRequestFactory.create(for: country)
        
        dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            // Handle Error
            if let error = error {
                completion(.failure(error))
                print("DataTask error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                // Handle Empty Data
                print("Empty Data")
                let error = NSError(domain:"Empty Data", code:404, userInfo:nil)
                completion(.failure(error))
                return
            }
            
            do {
                // Parse the data
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([BankLocationJSON].self, from: data)
                
                // Back to the main thread
                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            } catch let error {
                completion(.failure(error))
            }
            
        }
        dataTask?.resume()
    }
}
