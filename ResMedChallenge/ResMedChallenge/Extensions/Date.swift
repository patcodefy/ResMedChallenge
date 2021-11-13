//
//  Date.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation
extension Date {

    func toString() -> String? {
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "yyyy-MM-dd"

        return dateFormatter.string(from: self)
    }
}
