//
//  ResultsViewModel.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

class ResultsViewModel: BaseViewModel, ResultsViewModellable {

    var didGetRecentRecords   : (() -> Void)?

    var sportResults    : [String: [SportResult]]?
    var mostRecentDate  : Date?

    private (set) var outputSentences: [String] = []

    init(sportResults: [String: [SportResult]]) {
        self.sportResults = sportResults
    }
    
    func loadData() {
        if let sportResults = sportResults?.values {
            let resultsDate = Array(sportResults).flatMap({$0}).compactMap({$0.publicationDate.toDate()})
            mostRecentDate = resultsDate.sorted(by: {$0.compare($1) == .orderedDescending}).first

            determineEligibleRecords()

            didGetRecentRecords?()
        }
    }

    private func determineEligibleRecords() {
        guard let sportResults = sportResults else { return }

        for (category, categoryResults) in sportResults {
            for categoryResult in categoryResults {
                if let date1 = categoryResult.publicationDate.toDate(), let recentDate = mostRecentDate {
                    if Calendar.current.compare(date1, to: recentDate, toGranularity: .day) == .orderedSame {
                        createOutput(category: category, categoryResult: categoryResult)
                    }
                }

            }
        }
    }

    private func createOutput(category: String, categoryResult: SportResult) {
        switch category {
        case "f1Results":
            guard let seconds = categoryResult.seconds else { break }
            outputSentences.append("\(categoryResult.winner) wins \(categoryResult.tournament) by \(seconds)")
        case "nbaResults":
            guard let mvp = categoryResult.mvp, let gameNumber = categoryResult.gameNumber else { break }
            outputSentences.append("\(mvp) leads \(categoryResult.winner) to game \(gameNumber) in the \(categoryResult.tournament)")
        case "tennis":
            guard let loser = categoryResult.looser, let sets = categoryResult.numberOfSets else { break }
            outputSentences.append("\(categoryResult.tournament): \(categoryResult.winner) wins against \(loser) in \(sets)")
        default:
            break
        }
    }

}

