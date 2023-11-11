//
//  ViewBuilder.swift
//  Dicee-iOS13
//
//  Created by Nikita Shirobokov on 09.11.23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import UIKit

private extension String {
    static let imageLogo = "DiceeLogo"
}

class ViewBuilder {
    
    static let shared = ViewBuilder()
    private init() {}
    
    private let images = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var verticalStack: UIStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.distribution = .equalSpacing
        verticalStackView.alignment = .center
        verticalStackView.spacing = 55
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return verticalStackView
    }()
    
    lazy var bannerImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: .imageLogo)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 196).isActive = true
        image.heightAnchor.constraint(equalToConstant: 128).isActive = true
        return image
    }()
    
    lazy var horizontalStackView: UIStackView = {
        let horizonstalStackView = UIStackView()
        horizonstalStackView.axis = .horizontal
        horizonstalStackView.distribution = .equalSpacing
        horizonstalStackView.spacing = 75
        horizonstalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizonstalStackView.addArrangedSubview(diceImageFirst)
        horizonstalStackView.addArrangedSubview(diceImageSecond)
        return horizonstalStackView
    }()
    
    lazy var diceImageFirst: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: images[0])
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return image
    }()
    
    lazy var diceImageSecond: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: images[1])
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return image
    }()
    
    lazy var randomButton: UIButton = {
       let button = UIButton()
        button.setTitle("random", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.6066563725, green: 0.1104471758, blue: 0.1243971363, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 138).isActive = true
        button.heightAnchor.constraint(equalToConstant: 58).isActive = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(changeButton), for: .touchUpInside)
        return button
    }()
    
    @objc func changeButton() {
        diceImageFirst.image = UIImage(named: images.randomElement() ?? "DiceOne")
        diceImageSecond.image = UIImage(named: images.randomElement() ?? "DiceTwo")
    }
}
