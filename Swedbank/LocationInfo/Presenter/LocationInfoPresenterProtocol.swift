//
//  LocationInfoPresenterProtocol.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import Foundation
/// Presenter of module Location Info.
protocol LocationInfoPresenterProtocol: class {

    var location: BankLocation! { get set }

    func makeDetailInfo() -> LocationInfoViewModel

}
