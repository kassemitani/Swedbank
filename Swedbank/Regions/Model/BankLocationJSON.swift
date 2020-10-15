//
//  BankLocation.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import Foundation

struct BankLocationJSON: Codable {
    let latitude: Double?
    let longitude: Double?
    let name: String?
    let address: String?
    let idType: Int?
    let region: String?
    let availability: String? // optional
    let info: String?
    let noCash: Bool?
    let hasCoinStation: Bool?

    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
        case name = "n"
        case address = "a"
        case idType = "t"
        case region = "r"
        case availability = "av"
        case info = "i"
        case noCash = "ncash"
        case hasCoinStation = "cs"
    }

}
