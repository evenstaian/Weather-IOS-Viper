//
//  WebServiceType.swift
//  Weather Now
//
//  Created by Evens Taian on 28/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

enum WebServiceError: Error {
    case invalidUrl
    case noData
    case networkError(Error)
    case jsonParseError
}

typealias WebServiceTypeDataResult = Result<Data, WebServiceError>

protocol WebServiceType {
    func getData(urlString: String, completion: @escaping (WebServiceTypeDataResult) -> Void)
}
