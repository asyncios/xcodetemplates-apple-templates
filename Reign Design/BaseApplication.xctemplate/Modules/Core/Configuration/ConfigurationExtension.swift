//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

extension String {
    var path: String {
        return self.replacingOccurrences(of: Configuration.baseUrl, with: "")
    }
}
