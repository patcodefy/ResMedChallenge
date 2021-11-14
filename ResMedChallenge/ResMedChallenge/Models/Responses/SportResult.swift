//
//  SportResult.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import Foundation

struct SportResult: Codable {
    let winner          : String
    let seconds         : Double?
    let tournament      : String
    let publicationDate : String
    let mvp             : String?
    let gameNumber      : Int?
    let looser          : String?
    let numberOfSets    : Int?
}

