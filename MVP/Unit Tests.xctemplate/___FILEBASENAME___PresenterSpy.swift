//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterProtocolSpy: ___VARIABLE_sceneName___Contract.Presenter {
    var doSomethingCalled = false

    func doSomething() {
        doSomethingCalled = true
    }
}
