//
//  NbaResult.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import Foundation

struct NbaResult: Codable {
    let winner          : String
    let mvp             : String
    let tournament      : String
    let gameNumber      : Int
    let looser          : String
    let publicationDate : String
}
