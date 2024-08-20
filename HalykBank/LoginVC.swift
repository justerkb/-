//
//  ViewController.swift
//  HalykBank
//
//  Created by Yerkebulan on 03.08.2024.
//

import UIKit

class LoginVC: UIViewController{
    private let whiteView         = UIView()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign In"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private let welcomeTitle      = HBTitleLabel(textAligment: .left, text: "Welcome Back")
    
    private let welcomeMessage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .neutral
        label.text = "Hello there, sign in to continue"
        return label
    }()
    
    private let signInImage       = UIImageView(image: UIImage(named: "Illustration"))
    private let usernameTextField = HBTextField(title: "Username")
    private let passwordTextField = HBTextField(title: "Password")
    
    private let forgotPasswordMessage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .neutral4
        label.text = "Forgot your password ?"
        return label
    }()
    
    private let signInButton      = HBButton(title: "Sign in", color: .primary4)
    private let fingerImage       = UIImageView(image: UIImage(named: "Fingerprint"))
    
    private let noAccountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .neutral
        label.text = "Don't have an account?"
        return label
    }()
    
    private let sigUpLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign Up"
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .primary1
        label.textAlignment = .left
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primary1
        usernameTextField.delegate = self
        passwordTextField.delegate = self
       
        configureLeftBarButton()
        setupWhiteView()
        setupWelcomeLabels()
        setupSignInImage()
        setupTextFields()
        setUpForgorPasswordMessage()
        setupSignInButton()
        setupFingerImage()
        setUpSignUpLabels()
    }
    
    private func configureLeftBarButton() {
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"))
        leftButton.tintColor = .white
        let leftView = UIBarButtonItem(customView: titleLabel)
        navigationItem.leftBarButtonItems = [leftButton, leftView]
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
        
        passwordTextField.isSecureTextEntry = true
        
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
        
        signInButton.addTarget(self, action: #selector(didTupSignInButton), for: .touchUpInside)
        signInButton.isEnabled = false
        
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
               fingerImage.heightAnchor.constraint(equalToConstant: 64),
               fingerImage.widthAnchor.constraint(equalToConstant: 64)
           ])
       }
    
    private func setUpSignUpLabels() {
        whiteView.addSubview(sigUpLabel)
        whiteView.addSubview(noAccountLabel)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapSignUpLabel))
        sigUpLabel.isUserInteractionEnabled = true
        sigUpLabel.addGestureRecognizer(tap)
        
        NSLayoutConstraint.activate([
            noAccountLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 88),
            noAccountLabel.topAnchor.constraint(equalTo: fingerImage.bottomAnchor, constant: 24),
            noAccountLabel.heightAnchor.constraint(equalToConstant: 16),
            
            sigUpLabel.topAnchor.constraint(equalTo: fingerImage.bottomAnchor, constant:24),
            sigUpLabel.leadingAnchor.constraint(equalTo: noAccountLabel.trailingAnchor, constant: 12),
            sigUpLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor),
            sigUpLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    @objc func didTupSignInButton() {
        let signUpVC = RegisterVC()
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    @objc func didTapSignUpLabel() {
        let signUpVC = RegisterVC()
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}

#Preview {
    UINavigationController(rootViewController: LoginVC())
}

extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTextField.resignFirstResponder()
        usernameTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        updateSignInButtonState()
        print("cheking...")
    }
    
    private func updateSignInButtonState() {
        let isUsernameEmpty = usernameTextField.text?.isEmpty ?? true
        let isPasswordEmpty = passwordTextField.text?.isEmpty ?? true
            
        print(isUsernameEmpty)
        print(isPasswordEmpty)
        
        if isUsernameEmpty || isPasswordEmpty {
            signInButton.backgroundColor = .primary4
            signInButton.isEnabled = false
        } else {
            signInButton.backgroundColor = .primary1
            signInButton.isEnabled = true
        }
    }
}

