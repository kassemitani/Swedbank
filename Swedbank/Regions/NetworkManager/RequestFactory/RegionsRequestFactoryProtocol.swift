//
//  RegionsRequestFactoryProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import Foundation
protocol RegionsRequestFactoryProtocol {

    static func create(for country: Country) -> URLRequest

}
