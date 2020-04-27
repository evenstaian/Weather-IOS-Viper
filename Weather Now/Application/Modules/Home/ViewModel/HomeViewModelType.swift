//
//  HomeViewModelType.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

protocol HomeViewModelType: ViewModelType {
    var title: String { get }
    var showLoadingIndicator: Bool { get }
}
