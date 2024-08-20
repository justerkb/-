//
//  SignUpVC.swift
//  HalykBank
//
//  Created by Yerkebulan on 14.08.2024.
//

import UIKit

class RegisterVC: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign Up"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private let whiteView         = UIView()
    private let welcomeTitle      = HBTitleLabel(textAligment: .left, text: "Welcome to Us,")
    private let backArrow         = UIImage(named: "arrow-down-sign-to-navigate")
    private let welcomeMessage    = HBSecondaryBodyLabel(textAligment: .left, text: "Hello there, create New account", color: .black)
    private let welcomeImage      = UIImageView(image: UIImage(named: "Illustrationwelcome"))
    private let usernameTextField = HBTextField(title: "Username")
    private let phoneNumberTextField = HBTextField(title: "Phone number")
    private let passwordTextField = HBTextField(title: "Password")
    
    private let checkBoxButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "square"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.square"), for: .selected)
        button.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
        button.tintColor = .primary1
        return button
    }()
    
    private let termsAndConditionsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "By creating an account your aggree to our "
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .neutral
        return label
    }()
    
    private let termsAndConditionsLinkLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Term and Cond"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .primary1
        label.textAlignment =  .left
        return label
    }()
    
    private let signUpButton      = HBButton(title: "Sign Up", color: .primary4)
    private let haveAccountLabel  = HBSecondaryBodyLabel(textAligment: .right, text: "Have an account?", color: .neutral)
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setAttributedTitle(NSAttributedString("Sign in"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        button.titleLabel?.textColor = .primary1
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primary1
        navigationItem.largeTitleDisplayMode = .always
        configureLeftBarButton()
        setupWhiteView()
        setupWelcomeLabels()
        setupSignInImage()
        setupTextFields()
        setUptoggleSwitch()
        setupTermsAndConditionsLabels()
        setupSignUpButton()
        setupSignInSection()
    }
    
    private func configureSignInLabel() {
        
    }
    
    private func setupWhiteView() {
        view.addSubview(whiteView)
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 30
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30)
        ])
    }
    
    private func setupWelcomeLabels() {
        whiteView.addSubview(welcomeTitle)
        whiteView.addSubview(welcomeMessage)
        
                
        NSLayoutConstraint.activate([
            welcomeTitle.heightAnchor.constraint(equalToConstant: 28),
            welcomeTitle.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 24),
            welcomeTitle.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            welcomeTitle.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            
            welcomeMessage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            welcomeMessage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            welcomeMessage.topAnchor.constraint(equalTo: welcomeTitle.bottomAnchor, constant: 4),
            welcomeMessage.heightAnchor.constraint(equalToConstant: 16)

            
        ])
    }
    
    private func setupSignInImage() {
        whiteView.addSubview(welcomeImage)
        
        welcomeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeImage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 81),
            welcomeImage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -81),
            welcomeImage.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor, constant: 32)
        ])
    }
    
    private func setupTextFields() {
        whiteView.addSubview(usernameTextField)
        whiteView.addSubview(phoneNumberTextField)
        whiteView.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: welcomeImage.bottomAnchor, constant: 32),
            usernameTextField.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            usernameTextField.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            usernameTextField.heightAnchor.constraint(equalToConstant: 44),
            
            phoneNumberTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            passwordTextField.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    private func setUptoggleSwitch() {
        whiteView.addSubview(checkBoxButton)
        
        NSLayoutConstraint.activate([
            checkBoxButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            checkBoxButton.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            checkBoxButton.widthAnchor.constraint(equalToConstant: 24),  // Set width
            checkBoxButton.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    private func setupSignUpButton() {
        whiteView.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: checkBoxButton.bottomAnchor, constant: 40),
            signUpButton.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            signUpButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            signUpButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    private func setupSignInSection() {
        whiteView.addSubview(signInButton)
        whiteView.addSubview(haveAccountLabel)
        
        NSLayoutConstraint.activate([
            haveAccountLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 106),
            haveAccountLabel.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 24),
            haveAccountLabel.heightAnchor.constraint(equalToConstant: 16),
            
            signInButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant:24),
            signInButton.leadingAnchor.constraint(equalTo: haveAccountLabel.trailingAnchor, constant: 12),
            signInButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    private func configureLeftBarButton() {
       
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"))
        leftButton.tintColor = .white
        
        let leftView = UIBarButtonItem(customView: titleLabel)
        navigationItem.leftBarButtonItems = [leftButton, leftView]
    }
    
    @objc func checkboxTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    private func setupTermsAndConditionsLabels() {
        whiteView.addSubview(termsAndConditionsLabel)
//        whiteView.addSubview(termsAndConditionsLinkLabel)
        
        NSLayoutConstraint.activate([
            termsAndConditionsLabel.leadingAnchor.constraint(equalTo: checkBoxButton.trailingAnchor, constant: 12),
            termsAndConditionsLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            termsAndConditionsLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -62),
            
//            termsAndConditionsLinkLabel.leadingAnchor.constraint(equalTo: termsAndConditionsLabel.trailingAnchor),
//            termsAndConditionsLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
//            termsAndConditionsLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: 24)
        ])
    }
}

#Preview {
    UINavigationController(rootViewController: RegisterVC())
}
