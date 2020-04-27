//
//  MainUserInterfaceBuilder.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation
import UIKit

class MainUserInterfaceBuilder {
    
    lazy var currentWindow: UIWindow = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = build()
        window.makeKeyAndVisible()
        return window
    }()
    
    func build() -> UIViewController {
        let builder = HomeBuilder()
        let viewController = builder.build()
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
    
}
