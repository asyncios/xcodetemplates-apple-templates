//___FILEHEADER___

import UIKit

protocol ___VARIABLE_sceneName___PresenterProtocol: class {
    func doSomething()
}

protocol ___VARIABLE_sceneName___ViewProtocol: BaseViewProtocol {
    func displaySomething()
}

class ___VARIABLE_sceneName___Contract: Contract {
    typealias Presenter = ___VARIABLE_sceneName___PresenterProtocol
    typealias View = ___VARIABLE_sceneName___ViewProtocol
}
