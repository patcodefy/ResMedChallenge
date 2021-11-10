//
//  TennisResult.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import Foundation

struct TennisResult: Codable {
    let winner          : String
    let numberOfSets    : Int
    let tournament      : String
    let looser          : String
    let publicationDate : String
}
