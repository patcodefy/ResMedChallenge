//
//  ResultsViewModellable.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

protocol ResultsViewModellable: BaseViewModel {

    var didGetRecentRecords    : (() -> Void)? { get set }

    var mostRecentDate  : Date?         { get }
    var outputSentences : [[String]]    { get }

    func loadData()
}
