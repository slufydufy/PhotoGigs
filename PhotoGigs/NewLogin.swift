//
//  NewLogin.swift
//  PhotoGigs
//
//  Created by eatikiadm on 26/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit
import Firebase

class NewLogin : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(white: 1, alpha: 0.95)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel , target: self, action: #selector(backButton))
        setupView()
    }
    
    @objc func backButton() {
        dismiss(animated: true, completion: nil)
    }
    
    let formView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    let registerButton : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Create Account", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleRegister() {
        let vc = UINavigationController(rootViewController: NewRegister())
        present(vc, animated: true, completion: nil)
    }
    
    let emailLoginLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login with email"
        label.font = UIFont(name: "Avenir-Light", size: 18)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    let emailField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "email"
        tf.font = UIFont(name: "Avenir-Light", size: 16)
        tf.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        return tf
    }()
    
    let passField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "password"
        tf.font = UIFont(name: "Avenir-Light", size: 16)
        tf.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        return tf
    }()
    
    let LoginButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        btn.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        btn.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleLogin() {
        
        guard let email = emailField.text, let pass = passField.text else {
            print("Form can not blank")
            return
        }
        Auth.auth().signIn(withEmail: email, password: pass) { (user, error) in
            if error != nil {
                print(error!)
                return
            }
           
                print("login succeded")
                print(user!)

                self.present(TabBarController(), animated: true, completion: nil)
            
        }
    }
    
    let otherLoginLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Log In with other account"
        label.font = UIFont(name: "Avenir-Light", size: 18)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    
    func setupView() {
        
        view.addSubview(formView)
        formView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        formView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 3/4).isActive = true
        formView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        view.addSubview(registerButton)
        registerButton.topAnchor.constraint(lessThanOrEqualTo: formView.topAnchor, constant: 10).isActive = true
        registerButton.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor, constant: -20).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        registerButton.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: 1/2).isActive = true
        
        
        view.addSubview(emailLoginLabel)
        emailLoginLabel.topAnchor.constraint(equalTo: formView.topAnchor, constant: 75).isActive = true
        emailLoginLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(emailField)
        emailField.topAnchor.constraint(equalTo: emailLoginLabel.bottomAnchor, constant: 20).isActive = true
        emailField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        emailField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(passField)
        passField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20).isActive = true
        passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(LoginButton)
        LoginButton.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 40).isActive = true
        LoginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        LoginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(otherLoginLabel)
        otherLoginLabel.topAnchor.constraint(equalTo: LoginButton.bottomAnchor, constant: 50).isActive = true
        otherLoginLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
    }
}
