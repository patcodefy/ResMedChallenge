//
//  String.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

extension String {

    // Creates a date from a string and returns it
    func toDate(format: String = "MMM d, yyyy h:mm:ss a") -> Date {
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

        return dateFormatter.date(from: self) ?? Date()
    }

}
