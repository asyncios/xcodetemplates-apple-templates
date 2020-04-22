//___FILEHEADER___

import UIKit

class ___VARIABLE_sceneName___Builder: ___VARIABLE_sceneName___BuilderProtocol {
    func getViewController() -> UIViewController {
        let vc = Target___VARIABLE_sceneName___ViewController()
        let presenter = Target___VARIABLE_sceneName___Presenter(view: vc)
        vc.setup(presenter: presenter)
        return vc
    }
}
