//
//  RegionsNetworkManagerProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import Foundation

protocol RegionsNetworkManagerProtocol: class {

    func loadData(for country: Country, completion: @escaping (TaskResult<[BankLocationJSON]>) -> Void)

}
