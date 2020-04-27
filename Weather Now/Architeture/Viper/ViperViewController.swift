//
//  ViperViewController.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation
import UIKit

class ViperViewController<P: PresenterType>: UIViewController, ViewType {
    
    let presenter: P
    
    init(presenter: P){
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("not implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter.viewWillBecomeActive()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter.viewDidBecomeInactive()
    }
}
