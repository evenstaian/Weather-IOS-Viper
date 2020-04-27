//
//  Result.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

enum Result<S: Any, E: Error> {
    case success(_: S)
    case failure(_: E)
}
