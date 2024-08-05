//
//  HBSecondaryBodyLabel.swift
//  HalykBank
//
//  Created by Yerkebulan on 04.08.2024.
//

import UIKit

class HBSecondaryBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    init(textAligment: NSTextAlignment, text: String) {
        super.init(frame: .zero)
        self.textAlignment = textAligment
        self.text = text
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLabel() {
        self.textColor = .black
        self.font = .systemFont(ofSize: 12)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
