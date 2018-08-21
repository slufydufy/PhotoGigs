//
//  LoginController.swift
//  PhotoGigs
//
//  Created by Malfenro on 21/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class LoginController : UIViewController {
  
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
    
  }
  
}
