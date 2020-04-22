//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Alamofire

class BaseRemoteDataSource {
    let keys: KeysProtocol

    init(keys: KeysProtocol = Keys.shared) {
        self.keys = keys
    }

    func request<T: Decodable>(
        type: T.Type,
        url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = URLEncoding(),
        headers: HTTPHeaders = Keys.shared.getHeaders(),
        statusCodes: Range<Int> = 200..<300,
        onSuccess: @escaping ((DataResponse<T>, Int) -> Void),
        onFailure: @escaping ((Error?, Int) -> Void)) {

        let alamofire = Alamofire.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers
        )

        alamofire.validate(statusCode: statusCodes).responseJSON { (responseJson) in
            switch responseJson.result {
            case .success:
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(HelperFormmatters.shared.dateFormatter)
                if let responseData = responseJson.data {
                  if let obj = DecoderHelper.decode(type: type, data: responseData) {
                      let newResponse = DataResponse(request: responseJson.request,
                                                     response: responseJson.response,
                                                     data: responseData,
                                                     result: .success(obj))
                      onSuccess(newResponse, responseJson.response?.statusCode ?? 0)
                  } else {
                      onFailure(nil, responseJson.response?.statusCode ?? 0)
                  }
                } else {
                  onFailure(responseJson.error, responseJson.response?.statusCode ?? 0)
                }
            case .failure:
                onFailure(responseJson.error, responseJson.response?.statusCode ?? 0)
            }
        }
    }
}
