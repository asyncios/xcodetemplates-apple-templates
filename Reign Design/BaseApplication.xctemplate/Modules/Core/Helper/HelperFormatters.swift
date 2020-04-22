//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class HelperFormmatters {

    static let DATEFORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"

    static let shared = HelperFormmatters()

    let currencyFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.locale = Locale(identifier: "cl")
        numberFormatter.generatesDecimalNumbers = false
        numberFormatter.usesGroupingSeparator = true
        numberFormatter.groupingSeparator = "."
        numberFormatter.groupingSize = 3
        return numberFormatter
    }()

    let dateFormatter: DateFormatter = {
        let dstDateFormatter = DateFormatter()
        dstDateFormatter.dateFormat = HelperFormmatters.DATEFORMAT
        dstDateFormatter.locale = Locale(identifier: "es")
        return dstDateFormatter
    }()

    let mockDataBirthdateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = HelperFormmatters.DATEFORMAT
        formatter.locale = Locale(identifier: "es")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
        return formatter
    }()

    let birthdateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()

}
