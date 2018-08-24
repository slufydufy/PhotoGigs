//
//  ProfileController.swift
//  PhotoGigs
//
//  Created by Malfenro on 21/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit
import Firebase

class ProfileController : UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    view.backgroundColor = UIColor(white: 1, alpha: 0.95)
//    self.title = "Profile"
    navigationController?.navigationBar.prefersLargeTitles = true
    
    setupView()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  let userLabel : UILabel = {
    let label = UILabel()
    label.text = "User Name"
    label.font = UIFont(name: "Avenir-Medium", size: 16)
    label.textColor = UIColor.white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let logOutButton : UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Log out", for: .normal)
    btn.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 12)
    btn.addTarget(self, action: #selector(handleLogOut), for: .touchUpInside)
    return btn
  }()
  
  @objc func handleLogOut() {
      do {
        try Auth.auth().signOut()
      } catch let logoffError {
        print(logoffError)
      }
      let vc = RegisterController()
      present(vc, animated: true, completion: nil)
  }
  
  
  
  
  func setupView() {
    view.addSubview(userLabel)
    userLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    userLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    view.addSubview(logOutButton)
    logOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    logOutButton.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 15).isActive = true
  }
  
}
