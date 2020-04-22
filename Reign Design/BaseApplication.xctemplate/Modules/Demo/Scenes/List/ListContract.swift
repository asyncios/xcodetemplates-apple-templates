//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

protocol ListPresenterProtocol: class {
    func doSomething()
}

protocol ListViewProtocol: BaseViewProtocol {
    func displaySomething()
}

class ListContract: Contract {
    typealias Presenter = ListPresenterProtocol
    typealias View = ListViewProtocol
}
