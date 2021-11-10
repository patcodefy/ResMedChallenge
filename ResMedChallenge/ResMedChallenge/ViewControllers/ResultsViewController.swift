//
//  ResultsViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var resultsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultsTableView.delegate = self
        resultsTableView.dataSource = self
    }
}

extension ResultsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }

}
