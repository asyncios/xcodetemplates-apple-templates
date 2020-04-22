//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol KeysProtocol {
    func getHeaders() -> [String: String]
}

class Keys: KeysProtocol {

    static let shared = Keys()

    let storage: StorageProtocol

    init(storage: StorageProtocol = StorageKeyChain()) {
        self.storage = storage
    }

    func getHeaders() -> [String: String] {
        return [
            "Content-Type": "application/json"
        ]
    }

}
