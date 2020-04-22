//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import SVProgressHUD

protocol BaseViewProtocol: class {
    func showLoading()
    func hideLoading()
    func showGenericError()
    func showAlert(title: String, message: String)
}

extension BaseViewProtocol where Self: UIViewController {
    func showLoading() {
        SVProgressHUD.show()
    }

    func hideLoading() {
        SVProgressHUD.dismiss()
    }

    func showGenericError() {
        self.showAlert(title: StringConstants.APP_NAME, message: StringConstants.GENERIC_ERROR)
    }

    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction.init(title: StringConstants.OK, style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
}
