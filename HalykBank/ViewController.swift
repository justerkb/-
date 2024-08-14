//
//  ViewController.swift
//  HalykBank
//
//  Created by Yerkebulan on 03.08.2024.
//

import UIKit

class ViewController: UIViewController {
    private let signInLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign In"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private let whiteView         = UIView()
    private let welcomeTitle      = HBTitleLabel(textAligment: .left, text: "Welcome Back")
    private let backArrow         = UIImage(named: "arrow-down-sign-to-navigate")
    private let welcomeMessage    = HBSecondaryBodyLabel(textAligment: .left, text: "Hello there, sign in to continue", color: .black)
    private let signInImage       = UIImageView(image: UIImage(named: "Illustration"))
    private let usernameTextField = HBTextField(title: "Username")
    private let passwordTextField = HBTextField(title: "Password")
    private let forgotPasswordMessage = HBSecondaryBodyLabel(textAligment: .right, text: "Forgot your password ?", color: .systemGray)
    private let signInButton      = HBButton(title: "Sign in")
    private let fingerImage       = UIImageView(image: UIImage(named: "Fingerprint"))
    private let noAccountLabel    = HBSecondaryBodyLabel(textAligment: .right, text: "Don't have an account?", color: .black)
    private let sigUpLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign Up"
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .primary1
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primary1
        navigationItem.largeTitleDisplayMode = .always
        configureLeftBarButton()
        setupSignInLabel()
        setupWhiteView()
        setupWelcomeLabels()
        setupSignInImage()
        setupTextFields()
        setUpForgorPasswordMessage()
        setupSignInButton()
        setupFingerImage()
        setUpSignUpLabels()
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
            
//            welcomeMessage.heightAnchor.constraint(equalToConstant: 16),
            welcomeMessage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            welcomeMessage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            welcomeMessage.topAnchor.constraint(equalTo: welcomeTitle.bottomAnchor, constant: 4),
            welcomeMessage.heightAnchor.constraint(equalToConstant: 16)

            
        ])
    }
    
    private func setupSignInLabel() {
        
    }
    
    private func setupSignInImage() {
        whiteView.addSubview(signInImage)
        
        signInImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInImage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 81),
            signInImage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -81),
            signInImage.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor, constant: 32)
            
        ])
    }
    
    private func setupTextFields() {
        whiteView.addSubview(usernameTextField)
        whiteView.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: signInImage.bottomAnchor, constant: 32),
            usernameTextField.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            usernameTextField.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            usernameTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            passwordTextField.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    private func setUpForgorPasswordMessage() {
        whiteView.addSubview(forgotPasswordMessage)
        
        NSLayoutConstraint.activate([
            forgotPasswordMessage.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
            forgotPasswordMessage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            forgotPasswordMessage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            forgotPasswordMessage.heightAnchor.constraint(equalToConstant: 16),
        ])
    }
    
    private func setupSignInButton() {
        whiteView.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: forgotPasswordMessage.bottomAnchor, constant: 40),
            signInButton.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            signInButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -24),
            signInButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    private func setupFingerImage() {
           whiteView.addSubview(fingerImage)
           
           fingerImage.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               fingerImage.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20),
               fingerImage.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
               fingerImage.heightAnchor.constraint(equalToConstant: 44),
               fingerImage.widthAnchor.constraint(equalToConstant: 44)
           ])
       }
    
    private func setUpSignUpLabels() {
        whiteView.addSubview(sigUpLabel)
        
        NSLayoutConstraint.activate([
            sigUpLabel.topAnchor.constraint(equalTo: fingerImage.bottomAnchor, constant:24),
            sigUpLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor),
            sigUpLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor),
            sigUpLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    private func configureLeftBarButton() {
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"))
        let leftView = UIBarButtonItem(customView: signInLabel)
        navigationItem.leftBarButtonItems = [leftButton, leftView]
    }
    
}

#Preview {
    UINavigationController(rootViewController: ViewController())
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        return true
    }
}
