//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class DecoderHelper {
    static func decode<T: Decodable>(type: T.Type, data: Data) -> T? {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(HelperFormmatters.shared.dateFormatter)
        return try? decoder.decode(type, from: data)
    }

    static func encode<T: Encodable>( data: T) -> Data? {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .formatted(HelperFormmatters.shared.dateFormatter)
        return try? encoder.encode(data)
    }
}
