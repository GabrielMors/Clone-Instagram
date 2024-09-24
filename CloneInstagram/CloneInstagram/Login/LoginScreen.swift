//
//  LoginScreen.swift
//  CloneInstagram
//
//  Created by Nathalia Neves on 23/09/24.
//

import UIKit

class LoginScreen: UIView {

    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "insta.logo")
        return imageView
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Phone number, username or email adress"
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .systemGray6
        textField.keyboardType = .emailAddress
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .systemGray6
        textField.keyboardType = .default
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var forgottenPassword: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgotten Password?", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.backgroundColor = .blue
        button.tintColor = .white
        return button
    }()
    
    lazy var facebookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "fb.logo")
        return imageView
    }()
    
    lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login with facebook", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return button
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Don't have an account?"
        label.textColor = .systemGray3
        return label
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up.", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    private func addElements() {
        addSubview(logoImageView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(forgottenPassword)
        addSubview(loginButton)
        addSubview(facebookImageView)
        addSubview(facebookButton)
        addSubview(descriptionLabel)
        addSubview(signUpButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 49),
            logoImageView.widthAnchor.constraint(equalToConstant: 182),
            
            emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            emailTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
            
            forgottenPassword.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            forgottenPassword.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            forgottenPassword.heightAnchor.constraint(equalToConstant: 30),
            
            loginButton.topAnchor.constraint(equalTo: forgottenPassword.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            loginButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            loginButton.heightAnchor.constraint(equalToConstant: 44),
            
            facebookImageView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 40),
            facebookImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            facebookImageView.heightAnchor.constraint(equalToConstant: 17),
            facebookImageView.widthAnchor.constraint(equalToConstant: 17),
            
            facebookButton.leadingAnchor.constraint(equalTo: facebookImageView.trailingAnchor, constant: -8),
            facebookButton.centerYAnchor.constraint(equalTo: facebookImageView.centerYAnchor, constant: -5),
            
            descriptionLabel.topAnchor.constraint(equalTo: facebookButton.bottomAnchor, constant: 70),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            signUpButton.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: -8),
            signUpButton.centerYAnchor.constraint(equalTo: descriptionLabel.centerYAnchor),
        ])
    }
    
}
