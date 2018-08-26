//
//  LoginController.swift
//  PhotoGigs
//
//  Created by Malfenro on 24/08/18.
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
//  navigationController?.navigationBar.prefersLargeTitles = true
  navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel , target: self, action: #selector(backButton))
  
  setupView()
  }
  
  @objc func backButton() {
    dismiss(animated: true, completion: nil)
  }
  
  
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  // Dispose of any resources that can be recreated.
  }
  
  let formView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let topLoginLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Log In with Facebook/Google account"
    label.font = UIFont(name: "Avenir-Light", size: 18)
    label.textColor = UIColor.lightGray
    return label
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
  
  let emailLoginLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Or register with email account"
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
  
  let submitButton : UIButton = {
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
            }
            else {
                print("login succeded")
                print(user!)
                
                self.present(ModelsController(collectionViewLayout: UICollectionViewFlowLayout()), animated: true, completion: nil)
            }
        }
    }
    
  func setupView() {
    
    view.addSubview(formView)
    formView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    formView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 3/4).isActive = true
    formView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    view.addSubview(topLoginLabel)
    topLoginLabel.topAnchor.constraint(equalTo: formView.topAnchor, constant: 5).isActive = true
    topLoginLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    
//    view.addSubview(fbButton)
////    fbButton.delegate = self
//    fbButton.readPermissions = ["email", "public_profile"]
//    fbButton.topAnchor.constraint(equalTo: topLoginLabel.bottomAnchor, constant: 20).isActive = true
//    fbButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//    fbButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
//    
//    view.addSubview(googleButton)
//    GIDSignIn.sharedInstance().uiDelegate = self
//    googleButton.topAnchor.constraint(equalTo: fbButton.bottomAnchor, constant: 15).isActive = true
//    googleButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//    googleButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(emailLoginLabel)
    emailLoginLabel.topAnchor.constraint(equalTo: topLoginLabel.bottomAnchor, constant: 50).isActive = true
    emailLoginLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    
    view.addSubview(emailField)
    emailField.topAnchor.constraint(equalTo: emailLoginLabel.bottomAnchor, constant: 20).isActive = true
    emailField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    emailField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(passField)
    passField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20).isActive = true
    passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    passField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
    view.addSubview(submitButton)
    submitButton.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 40).isActive = true
    submitButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    submitButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    
  }
  


}
