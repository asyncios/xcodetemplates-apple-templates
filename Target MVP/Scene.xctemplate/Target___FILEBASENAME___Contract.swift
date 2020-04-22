//___FILEHEADER___

import UIKit

typealias Target___VARIABLE_sceneName___PresenterProtocol =
    Target___VARIABLE_sceneName___CommonContract.Presenter &
    OkMarket___VARIABLE_sceneName___Contract.Presenter &
    ClubAhorro___VARIABLE_sceneName___Contract.Presenter &
    ___VARIABLE_sceneName___Contract.Presenter

typealias Target___VARIABLE_sceneName___ViewProtocol =
    Target___VARIABLE_sceneName___CommonContract.View &
    OkMarket___VARIABLE_sceneName___Contract.View &
    ClubAhorro___VARIABLE_sceneName___Contract.View &
    ___VARIABLE_sceneName___Contract.View

class Target___VARIABLE_sceneName___Contract: Contract {
    typealias Presenter = Target___VARIABLE_sceneName___PresenterProtocol
    typealias View = Target___VARIABLE_sceneName___ViewProtocol
}
