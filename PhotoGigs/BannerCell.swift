//
//  BannerCell.swift
//  PhotoGigs
//
//  Created by Malfenro on 20/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class BannerCell : UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.white
    setupView()
  }
  
  let lineView : UIView = {
    let view = UIView()
//    view.backgroundColor = UIColor.black
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let bannerImage : UIImageView = {
    let img = UIImageView()
    img.translatesAutoresizingMaskIntoConstraints = false
    img.image = UIImage(named: "model2")
    return img
  }()
  
  let userNameLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Samantha Young"
    label.font = UIFont(name: "Avenir-Light", size: 20)
    label.textColor = UIColor.white
    return label
  }()
  
  let locationLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Indonesia"
    label.font = UIFont(name: "Avenir-Light", size: 16)
    label.textColor = UIColor.white
    return label
  }()
  
  let profileImage : UIImageView = {
    let img = UIImageView()
    img.translatesAutoresizingMaskIntoConstraints = false
    img.image = UIImage(named: "profile2")
    img.layer.masksToBounds = false
    img.layer.cornerRadius = 32.5
    img.clipsToBounds = true
    img.contentMode = .scaleAspectFill
    return img
  }()
  
  let editButton : UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("edit", for: .normal)
    
    return btn
  }()
  
  func setupView() {
    
    addSubview(lineView)
    lineView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    lineView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    lineView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(bannerImage)
    bannerImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
    bannerImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    bannerImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    bannerImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    
    addSubview(userNameLabel)
    userNameLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 10).isActive = true
    userNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    
    addSubview(locationLabel)
    locationLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    locationLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 5).isActive = true
    
    addSubview(profileImage)
    profileImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    profileImage.bottomAnchor.constraint(equalTo: lineView.bottomAnchor).isActive = true
    profileImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
    profileImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
  }
  
  
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
