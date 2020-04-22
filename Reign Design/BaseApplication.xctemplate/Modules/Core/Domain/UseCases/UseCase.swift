//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

struct DefaultFailure {
    var message: String
}

protocol UseCase {
    associatedtype RequestType
    associatedtype SuccessResponseType
    associatedtype FailureResponseType

    func addParameters(parameters: RequestType)
    func execute(onSuccess: @escaping (SuccessResponseType) -> Void,
                 onFailure: @escaping (FailureResponseType) -> Void)
}

struct AnyUseCase<RequestType, SuccessResponseType, FailureResponseType>: UseCase {
    private let addParametersClosure: (RequestType) -> Void
    private let executeClosure: (@escaping (SuccessResponseType) -> Void, @escaping (FailureResponseType) -> Void) -> Void

    init<T: UseCase>(_ useCase: T) where T.RequestType == RequestType,
                                            T.SuccessResponseType == SuccessResponseType,
                                            T.FailureResponseType == FailureResponseType {
        self.addParametersClosure = useCase.addParameters
        self.executeClosure = useCase.execute
    }

    func addParameters(parameters: RequestType) {
        addParametersClosure(parameters)
    }

    func execute(onSuccess: @escaping (SuccessResponseType) -> Void, onFailure: @escaping (FailureResponseType) -> Void) {
        executeClosure(onSuccess, onFailure)
    }
}
