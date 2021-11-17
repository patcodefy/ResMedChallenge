//
//  DetailsViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/16/21.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var tournamentUILabel : UILabel!
    @IBOutlet var dateUILabel       : UILabel!
    @IBOutlet var winnerUILabel     : UILabel!

    var result: SportResult?

    override func viewDidLoad() {
        super.viewDidLoad()

        refreshView()
    }

    private func refreshView() {
        guard let result = result else {
            return
        }

        tournamentUILabel.text = result.tournament + " Tournament"
        dateUILabel.text       = result.publicationDate
        winnerUILabel.text     = result.winner
    }

}
