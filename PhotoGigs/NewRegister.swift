//
//  NewRegister.swift
//  PhotoGigs
//
//  Created by eatikiadm on 26/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class NewRegister : UIViewController {
    
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
    
    let emailRegisterLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register with email"
        label.font = UIFont(name: "Avenir-Light", size: 18)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    let nameField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Full Name"
        tf.font = UIFont(name: "Avenir-Light", size: 16)
        tf.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        return tf
    }()
    
    let emailField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Email"
        tf.font = UIFont(name: "Avenir-Light", size: 16)
        tf.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        return tf
    }()
    
    let passField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Password"
        tf.font = UIFont(name: "Avenir-Light", size: 16)
        tf.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        return tf
    }()
    
    let registerButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        btn.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        btn.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleRegister() {
        let checkName = nameField.text
        if checkName?.isEmpty ?? true {
            print("name can not be blank")
            return
        }
        guard let email = emailField.text, let pass = passField.text, let name = nameField.text else {
            print("Form can not blank")
            return
        }
        Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                guard let uid = user?.user.uid else { return }
                let ref = Database.database().reference(fromURL: "https://photogigs-79bd9.firebaseio.com/").child("users").child(uid)
                let value = ["name": name, "email": email]
                ref.updateChildValues(value, withCompletionBlock: { (err, ref) in
                    if err != nil {
                        print("errornya :", err!)
                        return
                    }
                    print("brasil nambah user ke db")
                    
                })
                
                self.present(TabBarController(), animated: true, completion: nil)
            }
        }
    }
    
    let otherRegisterLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register with other account"
        label.font = UIFont(name: "Avenir-Light", size: 18)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    let fbButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Facebook", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(handleFB), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleFB() {
        FBSDKLoginManager().logIn(withReadPermissions: ["email", "public_profile"], from: self) { (result, error) in
            if error != nil {
                print("fb login error :", error!)
            }
            self.showUserInfo()
        }
    }
    
    func showUserInfo() {
        FBSDKGraphRequest(graphPath: "/me", parameters: ["fields": "id, name, email"]).start { (connection, result, err) in
            if err != nil {
                print("error request graph", err!)
                return
            }
            print(result!)
            
        }
    }
    
    
    func setupView() {
        
        view.addSubview(formView)
        formView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        formView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 3/4).isActive = true
        formView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        view.addSubview(emailRegisterLabel)
        emailRegisterLabel.topAnchor.constraint(equalTo: formView.topAnchor, constant: 75).isActive = true
        emailRegisterLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(nameField)
        nameField.topAnchor.constraint(equalTo: emailRegisterLabel.bottomAnchor, constant: 20).isActive = true
        nameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        nameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        
        view.addSubview(emailField)
        emailField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 20).isActive = true
        emailField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        emailField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(passField)
        passField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20).isActive = true
        passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(registerButton)
        registerButton.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 40).isActive = true
        registerButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        registerButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(otherRegisterLabel)
        otherRegisterLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 50).isActive = true
        otherRegisterLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(fbButton)
        fbButton.topAnchor.constraint(equalTo: otherRegisterLabel.bottomAnchor, constant: 20).isActive = true
        fbButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        fbButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
}
