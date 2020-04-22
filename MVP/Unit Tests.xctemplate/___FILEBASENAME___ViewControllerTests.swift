//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
    // MARK: Subject under test
    var viewController: ___VARIABLE_sceneName___ViewController!
    var presenterSpy: ___VARIABLE_sceneName___PresenterProtocolSpy!
    var window: UIWindow!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setup___VARIABLE_sceneName___ViewController()
    }

    override func tearDown() {
        window = nil
        super.tearDown()
    }

    // MARK: Test setup
    
    func setup___VARIABLE_sceneName___ViewController() {
        viewController = ___VARIABLE_sceneName___ViewController()
    }

    func loadView() {
        window.addSubview(viewController.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Tests

    func testShouldDoSomethingWhenViewIsLoaded() {
        // Given
        let presenterSpy = ___VARIABLE_sceneName___PresenterProtocolSpy()
        viewController.presenter = presenterSpy

        // When
        loadView()

        // Then
        XCTAssertTrue(presenterSpy.doSomethingCalled, "viewDidLoad() should ask the presenter to do something")
    }

    func testDisplaySomething() {
        // Given

        // When
        loadView()
        viewController.displaySomething()

        // Then
        //XCTAssertEqual(viewController.nameTextField.text, "", "displaySomething() should update the name text field")
    }
}
