//___FILEHEADER___

import UIKit

// MARK: Common Protocol

protocol Target___VARIABLE_sceneName___CommonPresenterProtocol: class {
    func doCommon()
}

protocol Target___VARIABLE_sceneName___CommonViewProtocol: class {
    func displayCommon()
}

class Target___VARIABLE_sceneName___CommonContract: Contract {
    typealias Presenter = Target___VARIABLE_sceneName___CommonPresenterProtocol
    typealias View = Target___VARIABLE_sceneName___CommonViewProtocol
}

// MARK: OKMARKET Protocol

protocol OkMarKet___VARIABLE_sceneName___PresenterProtocol: class {
    func doOkMarket()
}

protocol OkMarKet___VARIABLE_sceneName___ViewProtocol: class {
    func diplayOkMarket()
}

class OkMarket___VARIABLE_sceneName___Contract: Contract {
    typealias Presenter = OkMarKet___VARIABLE_sceneName___PresenterProtocol
    typealias View = OkMarKet___VARIABLE_sceneName___ViewProtocol
}

// MARK: ClubAhorro Protocol

protocol ClubAhorro___VARIABLE_sceneName___PresenterProtocol: class {
    func doClubAhorro()
}

protocol ClubAhorro___VARIABLE_sceneName___ViewProtocol: class {
    func diplayClubAhorro()
}

class ClubAhorro___VARIABLE_sceneName___Contract: Contract {
    typealias Presenter = ClubAhorro___VARIABLE_sceneName___PresenterProtocol
    typealias View = ClubAhorro___VARIABLE_sceneName___ViewProtocol
}
