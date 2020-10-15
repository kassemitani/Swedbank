//
//  LocationInfoTableViewController+DataSource.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/16/20.
//

import UIKit
extension LocationInfoTableViewController {

    private var reuseID: String { return "cellID" }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = dataSource[indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath)
        cell.textLabel?.text = info.title
        cell.detailTextLabel?.text = info.value
        return cell
    }

}
