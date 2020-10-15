//
//  ViewController.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/4/20.
//

import UIKit
import CoreData

class RegionsTableViewController: UITableViewController, RegionsTableViewControllerProtocol {
    func showError(_ error: Error) {
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }

    var router: RegionsRouterProtocol!
    var presenter: RegionsPresenterProtocol!

    /// Timer that is used to automatically update information.
    private var timer: Timer!

    /// TableView's Data source: List of 'Bank Location'.
    public lazy var dataSource = presenter.makeDataController()

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        refresh(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        turnOnTimer()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        turnOffTimer()
    }

    private func configUI() {
        refreshControl = UIRefreshControl()
        refreshControl!.addTarget(self, action: #selector(handlerRefresh), for: .valueChanged)
    }
    @objc private func handlerRefresh(_ refreshControl: UIRefreshControl) {
        presenter.asyncUpdateData(completion: { [unowned self] in self.refreshControl?.endRefreshing() } )
    }
    
    func refresh(_ animated: Bool = true) {
        if let scrollView = self.tableView {
            scrollView.setContentOffset(CGPoint(x: 0, y: scrollView.contentOffset.y - self.view.frame.height), animated: animated)
        }
        refreshControl!.beginRefreshing()
        refreshControl!.sendActions(for: .valueChanged)
    }
    /// Timer handler: starts updating information (without animation).
    @objc private func handlerTimer() {
        presenter.asyncUpdateData(completion: { } )
    }

    /// Turns on Timer to automatically update information.
    private func turnOnTimer() {
        let interval: TimeInterval = 3600 // 1 hour
        timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(handlerTimer), userInfo: nil, repeats: true)
    }

    /// Turns off Timer to automatically update information.
    private func turnOffTimer() {
        timer.invalidate()
    }
}

