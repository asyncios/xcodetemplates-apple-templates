//___FILEHEADER___

import UIKit

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Contract.Presenter {
    weak var view: ___VARIABLE_sceneName___Contract.View?
    
    init(view: ___VARIABLE_sceneName___Contract.View) {
        self.view = view
    }

    func doSomething() {
        /*
            ...
            presentation logic
            ...
        */
        self.view?.displaySomething()
    }
}
