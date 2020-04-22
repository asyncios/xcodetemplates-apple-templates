//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class Configuration {

    static var configurationDictionary: [String: Any] {
        let baseConfigurationsResoucePath = Bundle.main.url(forResource: "Configurations", withExtension: "plist")
        let data = try! Data(contentsOf: baseConfigurationsResoucePath!)
        return try! PropertyListSerialization.propertyList(from: data, options: [], format: nil) as! [String: Any]
    }

     static func valueWithSchemeFormat(key: String,
                                       subKey: String,
                                       baseConfigurationDictionary: [String: Any]? = nil) -> Any {
        let baseConfiguration = baseConfigurationDictionary != nil ?
            baseConfigurationDictionary! : Configuration.configurationDictionary
        let keyDictionary = baseConfiguration[key] as! [String: Any]
        if let enviromentDictionary: Dictionary = keyDictionary[subKey] as? [String: Any] {
            return enviromentDictionary[Configuration.schemeName.lowercased()] as Any
        } else {
            return keyDictionary[subKey] as Any
        }
    }

    static func value(key: String,
                      subKey: String,
                      baseConfigurationDictionary: [String: Any]? = nil) -> String {
        let baseConfiguration = baseConfigurationDictionary != nil ?
            baseConfigurationDictionary! : Configuration.configurationDictionary
        let keyDictionary = baseConfiguration[key] as! [String: Any]
        return keyDictionary[subKey] as! String
    }

    static var schemeName: String {
        return Bundle.main.infoDictionary!["CFBundleDisplayName"] as! String
    }

    static var  host: String {
        return Configuration.valueWithSchemeFormat(key: "Api", subKey: "Host") as! String
    }

    static var  scheme: String {
        return Configuration.valueWithSchemeFormat(key: "Api", subKey: "Scheme") as! String
    }

    static var  baseUrl: String {
        return scheme + host
    }

    static var stubs: Bool {
        return Configuration.valueWithSchemeFormat(key: "App", subKey: "Stubs") as! Bool
    }
}
