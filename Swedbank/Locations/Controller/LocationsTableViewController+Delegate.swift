//
//  LocationsTableViewController+Delegate.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/16/20.
//

import UIKit
extension LocationsTableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let location = dataSource[indexPath.row]
        router.goToDetailInfo(for: location, on: self)
    }

}
