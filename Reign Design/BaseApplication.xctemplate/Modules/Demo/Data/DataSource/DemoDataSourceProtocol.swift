//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol DemoCommonDataSource: class {
}

protocol DemoLocalDataSourceProtocol: DemoCommonDataSource {
}

protocol DemoRemoteDataSourceProtocol: DemoCommonDataSource {
    func fetchItems(onSuccess: @escaping ([Item]?) -> Void,
                    onFailure: @escaping ((Error?, Int) -> Void))
}
