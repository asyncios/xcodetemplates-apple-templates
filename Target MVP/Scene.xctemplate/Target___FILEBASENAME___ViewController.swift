//___FILEHEADER___

import UIKit

class Target___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewController {
    var commonPresenter: Target___VARIABLE_sceneName___CommonContract.Presenter?
    var okMarketPresenter: OkMarket___VARIABLE_sceneName___Contract.Presenter?
    var clubAhorro: ClubAhorro___VARIABLE_sceneName___Contract.Presenter?
    
    convenience init() {
        self.init(nibName: "___VARIABLE_sceneName___ViewController", bundle: nil)
    }

    func setup(presenter: Target___VARIABLE_sceneName___Contract.Presenter) {
        self.presenter = presenter
        self.commonPresenter = presenter
        self.okMarketPresenter = presenter
        self.clubAhorro = presenter
    }
}

extension Target___VARIABLE_sceneName___ViewController: Target___VARIABLE_sceneName___CommonContract.View {
    func displayCommon() {
    }
}

extension Target___VARIABLE_sceneName___ViewController: OkMarket___VARIABLE_sceneName___Contract.View {
    func diplayOkMarket() {
    }
}

extension Target___VARIABLE_sceneName___ViewController: ClubAhorro___VARIABLE_sceneName___Contract.View {
    func diplayClubAhorro() {
    }
}
