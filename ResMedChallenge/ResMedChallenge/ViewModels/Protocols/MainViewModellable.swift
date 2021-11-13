//
//  MainViewModellable.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

protocol MainViewModellable: BaseViewModel {

    var didGetResults   : (() -> Void)? { get set }

    var sportResults    : [String: [SportResult]]? { get }

    func getResults()
}
