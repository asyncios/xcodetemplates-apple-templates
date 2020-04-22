//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ListPresenter: ListContract.Presenter {
    weak var view: ListContract.View?
    var useCase: AnyUseCase<Void, [Item], DefaultFailure> = AnyUseCase<Void, [Item], DefaultFailure>(ListItem())

    init(view: ListContract.View) {
        self.view = view
    }

    func doSomething() {
        /*
            ...
            Presentation logic
            ...
        */
        self.useCase.addParameters(parameters: ())
        self.useCase.execute(onSuccess: { [weak self] (_) in
            guard let `self` = self else {return}
            self.view?.displaySomething()
        }) { [weak self] (error) in
            guard let `self` = self else {return}
            self.view?.showAlert(title: StringConstants.APP_NAME, message: error.message)
        }
    }
}
