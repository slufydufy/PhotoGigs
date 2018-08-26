//
//  TabBarController.swift
//  PhotoGigs
//
//  Created by Malfenro on 21/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let feedlayout = ModelsController(collectionViewLayout: UICollectionViewFlowLayout())
    let feedController = UINavigationController(rootViewController: feedlayout)
    
    feedController.tabBarItem.title = "Models"
    feedController.tabBarItem.image = UIImage(named: "Feed")
    
    let profileLayout = ProfileController()
    let profileController = UINavigationController(rootViewController: profileLayout)
    profileController.title = "Profile"
    profileController.tabBarItem.image = UIImage(named: "user-image")
//
//    let getRollLayout = GetRollCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
//    let getRollController = UINavigationController(rootViewController: getRollLayout)
//    getRollController.title = "Get Roll"
//    getRollController.tabBarItem.image = UIImage(named: "Roll-Icon")
    
    
    viewControllers = [feedController, profileController]

  }
  
}
