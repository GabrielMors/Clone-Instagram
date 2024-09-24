//
//  LoginViewController.swift
//  CloneInstagram
//
//  Created by Nathalia Neves on 23/09/24.
//

import UIKit

class LoginViewController: UIViewController {

    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configBackground()
    }

    private func configBackground() {
        view.backgroundColor = .background
    }

}

