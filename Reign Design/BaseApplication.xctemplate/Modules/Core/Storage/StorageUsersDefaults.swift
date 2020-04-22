//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class StorageUsersDefaults: StorageProtocol {

    func get(key: StorageEnum) -> Any? {
        return UserDefaults.standard.value(forKey: key.rawValue)
    }

    func save(value: Any, forKey key: StorageEnum) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }

    func remove(key: StorageEnum) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }

    func removeAll() {
        for key in StorageEnum.allCases {
            UserDefaults.standard.removeObject(forKey: key.rawValue)
        }
    }

}
