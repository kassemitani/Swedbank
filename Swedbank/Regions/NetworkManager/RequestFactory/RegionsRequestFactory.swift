//
//  RegionsRequestFactory.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import Foundation

class RegionsRequestFactory: RegionsRequestFactoryProtocol {
    static func create(for country: Country) -> URLRequest {
        var request = URLRequest(url: country.url)
        request.addValue("Swedbank-Embedded=iphone-app", forHTTPHeaderField: "Cookie")
        return request
    }
}
