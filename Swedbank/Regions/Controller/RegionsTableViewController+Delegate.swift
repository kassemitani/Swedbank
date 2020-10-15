//
//  RegionsTableViewController+Delegate.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import UIKit
extension RegionsTableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let region = dataSource.object(at: indexPath) as? BankRegion else { return }
        router.goToLocations(for: region, on: self)
    }

}
