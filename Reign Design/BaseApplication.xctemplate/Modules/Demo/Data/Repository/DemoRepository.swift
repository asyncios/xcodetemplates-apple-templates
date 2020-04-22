//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol DemoRepositoryProtocol: DemoLocalDataSourceProtocol, DemoRemoteDataSourceProtocol {
}

class DemoRepository: DemoRepositoryProtocol {
    static let shared: DemoRepositoryProtocol = DemoRepository()
    var remote: DemoRemoteDataSourceProtocol = DemoRemoteDataSource()
    init(remote: DemoRemoteDataSourceProtocol = DemoRemoteDataSource()) {
        self.remote = remote
    }

    func fetchItems(onSuccess: @escaping ([Item]?) -> Void,
                    onFailure: @escaping ((Error?, Int) -> Void)) {
        remote.fetchItems(onSuccess: { (items) in
            onSuccess(items)
        }, onFailure: { (error, statusCode) in
            onFailure(error, statusCode)
        })
    }
}
