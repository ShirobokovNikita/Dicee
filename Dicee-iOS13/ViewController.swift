//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let build = ViewBuilder.shared
    private var contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(image: UIImage(named: "GreenBackground"))
        backgroundImage.frame = view.bounds
        view.insertSubview(backgroundImage, at: 0)
        
        setVerticalStackView()
    }
    
    private func setVerticalStackView() {
        let verticalStackView = build.verticalStack
        view.addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(build.bannerImage)
        verticalStackView.addArrangedSubview(build.horizontalStackView)
        verticalStackView.addArrangedSubview(build.randomButton)
        
        NSLayoutConstraint.activate([
            verticalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 58),
            verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            verticalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -108)
        ])
    }
    
}
