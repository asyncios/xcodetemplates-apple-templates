//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ListItem: UseCase {
    typealias RequestType = Void
    typealias SuccessResponseType = [Item]
    typealias FailureResponseType = DefaultFailure

    let repository: DemoRepositoryProtocol
    init(repository: DemoRepositoryProtocol = DemoRepository.shared) {
        self.repository = repository
    }
    func addParameters(parameters: Void) {

    }

    func execute(onSuccess: @escaping ([Item]) -> Void, onFailure: @escaping (DefaultFailure) -> Void) {
        /*
         ...
         bussiness logic
         ...
         */
        self.repository.fetchItems(onSuccess: { (items) in
            onSuccess(items ?? [])
        }) { (_, _) in
            onFailure(DefaultFailure(message: StringConstants.GENERIC_ERROR))
        }
    }
}
