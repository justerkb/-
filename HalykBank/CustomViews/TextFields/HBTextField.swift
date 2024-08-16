//
//  HBTextField.swift
//  HalykBank
//
//  Created by Yerkebulan on 04.08.2024.
//

import UIKit

class HBTextField: UITextField {
    private let paddingPlaceHolder = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    init(title: String) {
        super.init(frame: .zero)
        configure(placeholder: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(placeholder: String) {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius                        = 15
        layer.borderWidth                         = 1
        textColor                                 = .neutral
        textAlignment                             = .left
        adjustsFontSizeToFitWidth                 = true
        autocorrectionType                        = .no
        font                                      = .systemFont(ofSize: 14)
        borderStyle                               = .line
        layer.borderColor                         = UIColor.systemGray.cgColor
        layer.masksToBounds                       = true;
        returnKeyType                             = .done
        autocapitalizationType                    = .none
        isUserInteractionEnabled                  = true

        attributedPlaceholder                     = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.neutral4])
        
    }
    
    //MARK: - Override methods
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: paddingPlaceHolder)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: paddingPlaceHolder)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: paddingPlaceHolder)
    }
}
