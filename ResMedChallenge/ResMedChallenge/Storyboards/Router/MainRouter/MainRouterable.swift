//
//  MainRouterable.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

protocol MainRouterable {

    // View Controllers
    func loadingViewController(startSpinner: Bool) -> LoadingIndicatorViewController
    func resultsViewController(sportResults: SportResultsResponse) -> ResultsViewController

    // View Models
    func mainViewModel() -> MainViewModellable
}
