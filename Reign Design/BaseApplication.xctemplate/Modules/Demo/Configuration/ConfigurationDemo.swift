//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ConfigurationDemo: Configuration {
    static var apiDemo: String {
        return "http://www.google.com"// baseUrl + Configuration.value(key: "Demo-Api", subKey: "API_DEMO")
    }
}
