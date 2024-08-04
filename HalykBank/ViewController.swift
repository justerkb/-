//
//  ViewController.swift
//  HalykBank
//
//  Created by Yerkebulan on 03.08.2024.
//

import UIKit

class ViewController: UIViewController {
    private let whiteView = UIView()
    private let welcomeTitle = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primary1
        setupWhiteView()
        setupWelcomeLabel()
    }
    
    private func setupWhiteView() {
        view.addSubview(whiteView)
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 30
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30)
        ])
    }
    
    private func setupWelcomeLabel() {
        whiteView.addSubview(welcomeTitle)
        welcomeTitle.translatesAutoresizingMaskIntoConstraints = false
        welcomeTitle.text = "Welcome Back"
        welcomeTitle.font = .systemFont(ofSize: 24, weight: .semibold)
        welcomeTitle.textColor = .primary1
        NSLayoutConstraint.activate([
            welcomeTitle.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 24),
            welcomeTitle.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            welcomeTitle.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24)
        ])
    }
}

#Preview {
    UINavigationController(rootViewController: ViewController())
}
