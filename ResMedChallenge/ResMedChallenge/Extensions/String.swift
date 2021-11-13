//
//  String.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

extension String {

    func toDate() -> Date? {
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "MMM d, yyyy h:mm:ss a"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        guard let date = dateFormatter.date(from: self) else { return nil }

        return date
    }

}
