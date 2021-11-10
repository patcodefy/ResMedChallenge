//
//  SportResultsResponse.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import Foundation

struct SportResultsResponse: Codable {
    let f1Results   : [F1Result]
    let nbaResults  : [NbaResult]
    let Tennis      : [TennisResult]
}
