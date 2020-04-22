//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class DemoRemoteDataSource: BaseRemoteDataSource, DemoRemoteDataSourceProtocol {
    func fetchItems(onSuccess: @escaping ([Item]?) -> Void,
                    onFailure: @escaping ((Error?, Int) -> Void)) {
        let url = ConfigurationDemo.apiDemo
        request(type: [Item].self, url: url, method: .get, onSuccess: { (data, statusCode) in
            onSuccess(data.result.value)
        }) { (error, statusCode) in
            onFailure(error, statusCode)
        }
    }
}
