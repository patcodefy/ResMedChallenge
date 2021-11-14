//
//  MockData.swift
//  ResMedChallengeTests
//
//  Created by pat on 11/13/21.
//

import XCTest
@testable import ResMedChallenge

class MockData {
    static var response = [
        "f1Results": [
            SportResult(winner: "Lewis Hamilton", seconds: 5.856, tournament: "Silverstone Grand Prix", publicationDate: "May 9, 2020 8:09:03 PM", mvp: nil, gameNumber: nil, looser: nil, numberOfSets: nil),
            SportResult(winner: "Lewis Hamilton", seconds: 5.000, tournament: "Spa BELGIAN GRAND PRIX", publicationDate: "Mar 15, 2020 8:09:03 PM", mvp: nil, gameNumber: nil, looser: nil, numberOfSets: nil),
        ],

        "nbaResults": [
            SportResult(winner: "Lakers", seconds: nil, tournament: "NBA playoffs", publicationDate: "May 9, 2020 9:15:15 AM", mvp: "Lebron James", gameNumber: 6, looser: "Heat", numberOfSets: nil),
            SportResult(winner: "Heat", seconds: nil, tournament: "NBA playoffs", publicationDate: "May 7, 2020 3:15:00 PM", mvp: "Jimmy Butler", gameNumber: 5, looser: "Lakers", numberOfSets: nil),
        ],

        "Tennis": [
            SportResult(winner: "Rafael Nadal", seconds: nil, tournament: "Roland Garros", publicationDate: "May 9, 2020 11:15:15 PM", mvp: nil, gameNumber: nil, looser: "Schwartzman ", numberOfSets: 3),
            SportResult(winner: "Novak Djokovic", seconds: nil, tournament: "Roland Garros", publicationDate: "May 9, 2020 2:00:40 PM", mvp: nil, gameNumber: nil, looser: "Stefanos Tsitsipas ", numberOfSets: 3),
            SportResult(winner: "Sofia Kenin", seconds: nil, tournament: "Roland Garros", publicationDate: "May 8, 2020 4:33:17 PM", mvp: nil, gameNumber: nil, looser: "Petra Kvitova", numberOfSets: 3)
        ]
    ]
}

