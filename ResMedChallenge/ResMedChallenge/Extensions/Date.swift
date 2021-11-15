//
//  Date.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation
extension Date {

    // Creates a string from a date following a specific format and returns it
    func toString(format: String = "yyyy-MM-dd") -> String {
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "yyyy-MM-dd"

        return dateFormatter.string(from: self)
    }
}
