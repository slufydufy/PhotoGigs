//
//  LoginController.swift
//  PhotoGigs
//
//  Created by Malfenro on 21/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase
import GoogleSignIn

class LoginController : UIViewController, GIDSignInUIDelegate {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    view.backgroundColor = UIColor(white: 1, alpha: 0.95)
    
    navigationController?.navigationBar.prefersLargeTitles = true
    
    setupView()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  let backgroundImage : UIImageView = {
    let img = UIImageView()
    img.translatesAutoresizingMaskIntoConstraints = false
    img.image = UIImage(named: "background1")
    img.clipsToBounds = true
    img.contentMode = .scaleAspectFill
    return img
  }()
  
  let emailField : UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.placeholder = "email"
    tf.font = UIFont(name: "Avenir-Light", size: 16)
    tf.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    return tf
  }()
  
  let nameField : UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.placeholder = "full name"
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
  
  let submitButton : UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("submit", for: .normal)
    btn.setTitleColor(UIColor.white, for: .normal)
    btn.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
    btn.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    return btn
  }()

    let fbButton : FBSDKLoginButton = {
        let btn = FBSDKLoginButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let googleButton : GIDSignInButton = {
        let btn = GIDSignInButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
  func setupView() {
//    view.addSubview(backgroundImage)
//    backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//    backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//    backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//    backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    
    view.addSubview(emailField)
    emailField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    emailField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    emailField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(nameField)
    nameField.bottomAnchor.constraint(equalTo: emailField.topAnchor, constant: -20).isActive = true
    nameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    nameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(passField)
    passField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20).isActive = true
    passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    passField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(submitButton)
    submitButton.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 40).isActive = true
    submitButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    submitButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(fbButton)
    fbButton.delegate = self
    fbButton.readPermissions = ["email", "public_profile"]
    fbButton.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 100).isActive = true
//    fbButton.heightAnchor.constraint(equalToConstant: 50)
    fbButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    fbButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(googleButton)
    GIDSignIn.sharedInstance().uiDelegate = self
//    googleButton.readPermissions = ["email", "public_profile"]
    googleButton.topAnchor.constraint(equalTo: fbButton.bottomAnchor, constant: 20).isActive = true
//    googleButton.heightAnchor.constraint(equalToConstant: 30)
    googleButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    googleButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
  }
  
}

extension LoginController : FBSDKLoginButtonDelegate {


    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("did Logout from FB")
    }

    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        
        showEmail()
        
    }
    
    func showEmail() {
        
        let accessToken =  FBSDKAccessToken.current()
        guard let accessTokenString = accessToken?.tokenString else {
            return
        }
        let credential = FacebookAuthProvider.credential(withAccessToken: accessTokenString)
        
        Auth.auth().signIn(with: credential) { (user, error) in
            if error != nil {
                print("problem is", error!)
                return
            }
            print("sign in with", user!)
        }
        
        FBSDKGraphRequest(graphPath: "/me", parameters: ["fields": "id, name, email"]).start { (connection, result, err) in
            if err != nil {
                print("error request graph", err!)
                return
            }
            print(result!)
        }
    }
    
    
    
}







