//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

enum StorageEnum: String, CaseIterable {
    case token
}

protocol StorageProtocol {
    func get(key: StorageEnum) -> Any?
    func save(value: Any, forKey key: StorageEnum)
    func remove(key: StorageEnum)
    func removeAll()
}
