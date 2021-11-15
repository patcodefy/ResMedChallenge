//
//  ResultsViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var resultsTableView  : UITableView!
    @IBOutlet var dateTitleLabel    : UILabel!

    var viewModel   : ResultsViewModellable!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Listen to the view model when it finds the results to display in the table
        viewModel.didGetRecentRecords = { [ weak self ] in
            guard let date = self?.viewModel.mostRecentDate?.toString() else { return }
            self?.dateTitleLabel.text = "Results for \(date)"

            self?.resultsTableView.reloadData()
        }

        viewModel.loadData()
    }

}

extension ResultsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.outputSentences.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()

        content.text = viewModel.outputSentences[indexPath.item].first
        content.secondaryText = viewModel.outputSentences[indexPath.item].last

        cell.contentConfiguration = content
        return cell
    }

}

