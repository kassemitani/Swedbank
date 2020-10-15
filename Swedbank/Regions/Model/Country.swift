//
//  Country.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import Foundation

enum Country: String  {
    
    case estonia = "Estonia"
    case latvia = "Latvia"
    case lithuania = "Lithuania"
    
    static var allCountries: [Country] = [.estonia, .latvia, .lithuania]
    
    var url: URL {
        switch self {
        case .estonia:
            return URL(string: "https://www.swedbank.ee/finder.json")!
        case .latvia:
            return URL(string: "https://ib.swedbank.lv/finder.json")!
        case .lithuania:
            return URL(string: "https://ib.swedbank.lt/finder.json")!
        }
    }
    
    var title: String {
        return self.rawValue
    }
    
}
