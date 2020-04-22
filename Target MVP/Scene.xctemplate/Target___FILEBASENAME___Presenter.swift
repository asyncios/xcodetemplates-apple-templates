//___FILEHEADER___

import UIKit

class Target___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Presenter {
    weak var commonView: Target___VARIABLE_sceneName___CommonContract.View?
    weak var okMarketView: OkMarket___VARIABLE_sceneName___Contract.View?
    weak var clubAhorroView: ClubAhorro___VARIABLE_sceneName___Contract.View?
    
    init(view: Target___VARIABLE_sceneName___Contract.View) {
        super.init(view: view)
        self.commonView = view
        self.okMarketView = view
        self.clubAhorroView = view
    }
}

extension Target___VARIABLE_sceneName___Presenter: Target___VARIABLE_sceneName___CommonContract.Presenter {
    func doCommon() {
        self.commonView?.displayCommon()
    }
}

extension Target___VARIABLE_sceneName___Presenter: OkMarket___VARIABLE_sceneName___Contract.Presenter {
    func doOkMarket() {
        self.okMarketView?.diplayOkMarket()
    }
}

extension Target___VARIABLE_sceneName___Presenter: ClubAhorro___VARIABLE_sceneName___Contract.Presenter {
    func doClubAhorro() {
        self.clubAhorroView?.diplayClubAhorro()
    }
}
