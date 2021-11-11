//
//  ResultsViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var resultsTableView: UITableView!

    var sportResults: SportResultsResponse?

    override func viewDidLoad() {
        super.viewDidLoad()

        resultsTableView.delegate = self
        resultsTableView.dataSource = self
    }
}

extension ResultsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sportResults = self.sportResults else { return 0 }

        let numberOfRows = sportResults.Tennis.count + sportResults.f1Results.count + sportResults.nbaResults.count

        return numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }

}
