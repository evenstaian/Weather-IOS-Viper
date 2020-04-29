//
//  HomeViewController.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class HomeViewController<P: HomePresenterType> : ViperViewController<P>, CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager?
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setAttributedTitle( NSAttributedString(string: "Tempo"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var lbPresentation: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .gray
        label.text = "Aqui você saberá exatamente qual o clima na sua região"
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var lbCelsius: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.00, green: 0.59, blue: 0.29, alpha: 1.00)
        label.text = "22"
        label.font = label.font.withSize(80)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(presenter: P){
        super.init(presenter: presenter)
        setupLocation()
        setupViews()
        setupConstraints()
        self.title = "Previsão do Tempo"
        self.view.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLocation(){
        locationManager = CLLocationManager()
        locationManager?.requestAlwaysAuthorization()
        locationManager?.delegate = self
        locationManager?.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            print("lat:", location.coordinate.latitude)
        }
    }
    
    func setupViews(){
        view.addSubview(contentView)
        contentView.addSubview(lbPresentation)
        contentView.addSubview(lbCelsius)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            lbPresentation.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100),
            lbPresentation.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 100),
            lbPresentation.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
        ])
        
        NSLayoutConstraint.activate([
            lbCelsius.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 30),
            lbCelsius.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -30),
            lbCelsius.topAnchor.constraint(equalTo: lbPresentation.topAnchor, constant: 70),
        ])
    }
    
    
}
