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

    private (set) var outputSentences   : [[String]] = []

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
                if let recentDate = mostRecentDate {
                    let date = categoryResult.publicationDate.toDate()
                    if Calendar.current.compare(date, to: recentDate, toGranularity: .day) == .orderedSame {
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
            let output = ["\(categoryResult.winner) wins \(categoryResult.tournament) by \(seconds)", categoryResult.publicationDate]
            outputSentences.append(output)
        case "nbaResults":
            guard let mvp = categoryResult.mvp, let gameNumber = categoryResult.gameNumber else { break }
            let output = ["\(mvp) leads \(categoryResult.winner) to game \(gameNumber) in the \(categoryResult.tournament)", categoryResult.publicationDate]
            outputSentences.append(output)
        case "Tennis":
            guard let loser = categoryResult.looser?.trimmingCharacters(in: .whitespaces), let sets = categoryResult.numberOfSets else { break }
            let output = ["\(categoryResult.tournament): \(categoryResult.winner) wins against \(loser) in \(sets)", categoryResult.publicationDate]
            outputSentences.append(output)
        default:
            break
        }

        outputSentences.sort{ $0[1].toDate().compare($1[1].toDate()) == .orderedDescending }
    }

}

