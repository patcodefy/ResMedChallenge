//
//  F1Result.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import Foundation

struct F1Result: Codable {
    let winner          : String
    let seconds         : Double
    let tournament      : String
    let publicationDate : String
}
