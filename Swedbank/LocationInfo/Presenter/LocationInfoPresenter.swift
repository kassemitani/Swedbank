//
//  LocationInfoPresenter.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/14/20.
//

import Foundation
/// Presenter of module Location Info.
class LocationInfoPresenter: LocationInfoPresenterProtocol {

    var location: BankLocation!

    func makeDetailInfo() -> LocationInfoViewModel {

        let typeLocation = TypeLocation(
            id: Int(location.idType),
            info: location.info,
            noCash: location.noCash,
            hasCoinStation: location.hasCoinStation
        )

        let viewModel = LocationInfoViewModel(
            type: typeLocation,
            name: location.name ?? "",
            address: location.address ?? "",
            region: location.region?.name ?? "",
            availability: location.availability
        )

        return viewModel
    }

}
