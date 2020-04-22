//___FILEHEADER___

import UIKit


class ___VARIABLE_sceneName___ViewController: UIViewController {
    var presenter: ___VARIABLE_sceneName___Contract.Presenter?
    
    convenience init() {
        self.init(nibName: "___VARIABLE_sceneName___ViewController", bundle: nil)
        setup()
    }
    
    func setup() {
        presenter = ___VARIABLE_sceneName___Presenter(view: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.doSomething()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___Contract.View {
    func displaySomething() {
        // do something
    }
}
