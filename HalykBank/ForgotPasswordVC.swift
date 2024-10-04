//
//  ForgotPasswordVC.swift
//  HalykBank
//
//  Created by Yerkebulan on 20.08.2024.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign Up"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLeftBarButton()
        
        view.backgroundColor = .systemBackground
    }
    
    private func configureLeftBarButton() {
       
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"))
        leftButton.tintColor = .white
        
        let leftView = UIBarButtonItem(customView: titleLabel)
        navigationItem.leftBarButtonItems = [leftButton, leftView]
    }
}

#Preview {
    UINavigationController(rootViewController: ForgotPasswordVC())
}
