//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ListViewController: UIViewController {
    var presenter: ListContract.Presenter?

    convenience init() {
        self.init(nibName: "ListViewController", bundle: nil)
        setup()
    }

    func setup() {
        presenter = ListPresenter(view: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.doSomething()
    }
}

extension ListViewController: ListContract.View {
    func displaySomething() {
        // do something
    }
}
