//
//  LocationTableViewController+DataSource.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/16/20.
//
import UIKit
extension LocationsTableViewController {

    private var reuseID: String { return "cellID" }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath)
        switch dataSource[indexPath.row].idType {
            case 0:
                cell.imageView?.image = UIImage(named: "branch")
            case 1:
                cell.imageView?.image = UIImage(named: "atm")
            case 2:
                cell.imageView?.image = UIImage(named: "bna")
            default: break
        }
        cell.textLabel?.text = dataSource[indexPath.row].name
        cell.detailTextLabel?.text = dataSource[indexPath.row].address
        return cell
    }

}
