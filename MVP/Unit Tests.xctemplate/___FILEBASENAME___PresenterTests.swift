//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    // MARK: Subject under test

    var presenter: ___VARIABLE_sceneName___Presenter!
    var viewControllerSpy: ___VARIABLE_sceneName___ViewProtocolSpy!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }

    // MARK: Test setup

    func setup___VARIABLE_sceneName___Presenter() {
        viewControllerSpy = ___VARIABLE_sceneName___ViewProtocolSpy()
        presenter = ___VARIABLE_sceneName___Presenter(view: viewControllerSpy)
    }

    // MARK: Tests

    func testDoSomething() {
        // Given

        // When
        presenter.doSomething()

        // Then
        XCTAssertTrue(viewControllerSpy.displaySomethingCalled, "doSomething() should ask the view controller to display the result")
    }
}
