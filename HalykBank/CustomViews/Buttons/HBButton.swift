//
//  HBButton.swift
//  HalykBank
//
//  Created by Yerkebulan on 05.08.2024.
//

import UIKit

class HBButton: UIButton {
    
    init(title: String, color: UIColor) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        self.backgroundColor = color
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 15
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        titleLabel?.textColor = .white
    }

}
