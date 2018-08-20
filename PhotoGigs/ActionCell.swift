//
//  ActionCell.swift
//  PhotoGigs
//
//  Created by Malfenro on 20/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class ActionCell : UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.white
    setupView()
  }
  
  let rowTopView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.yellow
    return view
  }()
  
  let heightView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let heightLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "HEIGHT (KG)"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let weightView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let weightLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "WEIGHT (CM)"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let bustView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let bustLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "BUST"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let waistView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let waistLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "WAIST"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let hipsView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let hipsLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "HIPS"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let dividerTopView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.lightGray
    return view
  }()
  
  let heightContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let heightContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "180"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let weightContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let weightContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "47"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let bustContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let bustContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "78"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let waistContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let waistContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "63"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let hipsContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let hipsContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "81"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  //    batas
  let rowBottomView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.green
    return view
  }()
  
  let shoesView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let shoesLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "SHOES"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let topView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let topLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "TOP"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let bottomView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let bottomLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "BOTTOM"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let hairView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let hairLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "HAIR"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let eyesView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let eyesLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "EYES"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let dividerBottomView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.lightGray
    return view
  }()
  
  let shoesContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let shoesContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "39"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let topContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let topContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "S"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let bottomContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let bottomContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "25"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let hairContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let hairContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "BROWN"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  let eyesContentView : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    return view
  }()
  
  let eyesContentLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "BROWN"
    label.font = UIFont(name: "Avenir-Light", size: 10)
    label.textColor = UIColor.lightGray
    return label
  }()
  
  func setupView() {
    
    addSubview(rowTopView)
    rowTopView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    rowTopView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    rowTopView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -40).isActive = true
    rowTopView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2).isActive = true
    
    addSubview(heightView)
    heightView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    heightView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    heightView.topAnchor.constraint(equalTo: rowTopView.topAnchor).isActive = true
    heightView.leftAnchor.constraint(equalTo: rowTopView.leftAnchor).isActive = true
    
    addSubview(heightLabel)
    heightLabel.centerXAnchor.constraint(equalTo: heightView.centerXAnchor).isActive = true
    heightLabel.bottomAnchor.constraint(equalTo: heightView.bottomAnchor, constant : -5).isActive = true
    
    addSubview(weightView)
    weightView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    weightView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    weightView.topAnchor.constraint(equalTo: rowTopView.topAnchor).isActive = true
    weightView.leftAnchor.constraint(equalTo: heightView.rightAnchor).isActive = true
    
    addSubview(weightLabel)
    weightLabel.centerXAnchor.constraint(equalTo: weightView.centerXAnchor).isActive = true
    weightLabel.bottomAnchor.constraint(equalTo: weightView.bottomAnchor, constant : -5).isActive = true
    
    addSubview(bustView)
    bustView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    bustView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    bustView.topAnchor.constraint(equalTo: rowTopView.topAnchor).isActive = true
    bustView.leftAnchor.constraint(equalTo: weightView.rightAnchor).isActive = true
    
    addSubview(bustLabel)
    bustLabel.centerXAnchor.constraint(equalTo: bustView.centerXAnchor).isActive = true
    bustLabel.bottomAnchor.constraint(equalTo: bustView.bottomAnchor, constant : -5).isActive = true
    
    addSubview(waistView)
    waistView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    waistView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    waistView.topAnchor.constraint(equalTo: rowTopView.topAnchor).isActive = true
    waistView.leftAnchor.constraint(equalTo: bustView.rightAnchor).isActive = true
    
    addSubview(waistLabel)
    waistLabel.centerXAnchor.constraint(equalTo: waistView.centerXAnchor).isActive = true
    waistLabel.bottomAnchor.constraint(equalTo: waistView.bottomAnchor, constant : -5).isActive = true
    
    addSubview(hipsView)
    hipsView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    hipsView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    hipsView.topAnchor.constraint(equalTo: rowTopView.topAnchor).isActive = true
    hipsView.leftAnchor.constraint(equalTo: waistView.rightAnchor).isActive = true
    
    addSubview(hipsLabel)
    hipsLabel.centerXAnchor.constraint(equalTo: hipsView.centerXAnchor).isActive = true
    hipsLabel.bottomAnchor.constraint(equalTo: hipsView.bottomAnchor, constant : -5).isActive = true
    
    addSubview(dividerTopView)
    dividerTopView.centerYAnchor.constraint(equalTo: rowTopView.centerYAnchor).isActive = true
    dividerTopView.centerXAnchor.constraint(equalTo: rowTopView.centerXAnchor).isActive = true
    dividerTopView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor).isActive = true
    dividerTopView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(heightContentView)
    heightContentView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    heightContentView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    heightContentView.topAnchor.constraint(equalTo: heightView.bottomAnchor).isActive = true
    heightContentView.leftAnchor.constraint(equalTo: rowTopView.leftAnchor).isActive = true
    
    addSubview(heightContentLabel)
    heightContentLabel.centerXAnchor.constraint(equalTo: heightContentView.centerXAnchor).isActive = true
    heightContentLabel.topAnchor.constraint(equalTo: heightContentView.topAnchor, constant : 5).isActive = true
    
    addSubview(weightContentView)
    weightContentView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    weightContentView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    weightContentView.topAnchor.constraint(equalTo: weightView.bottomAnchor).isActive = true
    weightContentView.leftAnchor.constraint(equalTo: heightContentView.rightAnchor).isActive = true
    
    addSubview(weightContentLabel)
    weightContentLabel.centerXAnchor.constraint(equalTo: weightContentView.centerXAnchor).isActive = true
    weightContentLabel.topAnchor.constraint(equalTo: weightContentView.topAnchor, constant : 5).isActive = true
    
    addSubview(bustContentView)
    bustContentView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    bustContentView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    bustContentView.topAnchor.constraint(equalTo: bustView.bottomAnchor).isActive = true
    bustContentView.leftAnchor.constraint(equalTo: weightContentView.rightAnchor).isActive = true
    
    addSubview(bustContentLabel)
    bustContentLabel.centerXAnchor.constraint(equalTo: bustContentView.centerXAnchor).isActive = true
    bustContentLabel.topAnchor.constraint(equalTo: bustContentView.topAnchor, constant : 5).isActive = true
    
    addSubview(waistContentView)
    waistContentView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    waistContentView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    waistContentView.topAnchor.constraint(equalTo: waistView.bottomAnchor).isActive = true
    waistContentView.leftAnchor.constraint(equalTo: bustContentView.rightAnchor).isActive = true
    
    addSubview(waistContentLabel)
    waistContentLabel.centerXAnchor.constraint(equalTo: waistContentView.centerXAnchor).isActive = true
    waistContentLabel.topAnchor.constraint(equalTo: waistContentView.topAnchor, constant : 5).isActive = true
    
    addSubview(hipsContentView)
    hipsContentView.heightAnchor.constraint(equalTo: rowTopView.heightAnchor, multiplier: 1/2).isActive = true
    hipsContentView.widthAnchor.constraint(equalTo: rowTopView.widthAnchor, multiplier: 1/5).isActive = true
    hipsContentView.topAnchor.constraint(equalTo: hipsView.bottomAnchor).isActive = true
    hipsContentView.leftAnchor.constraint(equalTo: waistContentView.rightAnchor).isActive = true
    
    addSubview(hipsContentLabel)
    hipsContentLabel.centerXAnchor.constraint(equalTo: hipsContentView.centerXAnchor).isActive = true
    hipsContentLabel.topAnchor.constraint(equalTo: hipsContentView.topAnchor, constant : 5).isActive = true
    
    addSubview(rowBottomView)
    rowBottomView.topAnchor.constraint(equalTo: rowTopView.bottomAnchor).isActive = true
    rowBottomView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    rowBottomView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -40).isActive = true
    rowBottomView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2).isActive = true
    
    addSubview(shoesView)
    shoesView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    shoesView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    shoesView.topAnchor.constraint(equalTo: rowBottomView.topAnchor).isActive = true
    shoesView.leftAnchor.constraint(equalTo: rowBottomView.leftAnchor).isActive = true
    
    addSubview(shoesLabel)
    shoesLabel.centerXAnchor.constraint(equalTo: shoesView.centerXAnchor).isActive = true
    shoesLabel.bottomAnchor.constraint(equalTo: shoesView.bottomAnchor, constant: -5).isActive = true
    
    addSubview(topView)
    topView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    topView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    topView.topAnchor.constraint(equalTo: rowBottomView.topAnchor).isActive = true
    topView.leftAnchor.constraint(equalTo: shoesView.rightAnchor).isActive = true
    
    addSubview(topLabel)
    topLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
    topLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -5).isActive = true
    
    addSubview(bottomView)
    bottomView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    bottomView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    bottomView.topAnchor.constraint(equalTo: rowBottomView.topAnchor).isActive = true
    bottomView.leftAnchor.constraint(equalTo: topView.rightAnchor).isActive = true
    
    addSubview(bottomLabel)
    bottomLabel.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
    bottomLabel.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -5).isActive = true
    
    addSubview(hairView)
    hairView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    hairView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    hairView.topAnchor.constraint(equalTo: rowBottomView.topAnchor).isActive = true
    hairView.leftAnchor.constraint(equalTo: bottomView.rightAnchor).isActive = true
    
    addSubview(hairLabel)
    hairLabel.centerXAnchor.constraint(equalTo: hairView.centerXAnchor).isActive = true
    hairLabel.bottomAnchor.constraint(equalTo: hairView.bottomAnchor, constant: -5).isActive = true
    
    addSubview(eyesView)
    eyesView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    eyesView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    eyesView.topAnchor.constraint(equalTo: rowBottomView.topAnchor).isActive = true
    eyesView.leftAnchor.constraint(equalTo: hairView.rightAnchor).isActive = true
    
    addSubview(eyesLabel)
    eyesLabel.centerXAnchor.constraint(equalTo: eyesView.centerXAnchor).isActive = true
    eyesLabel.bottomAnchor.constraint(equalTo: eyesView.bottomAnchor, constant: -5).isActive = true
    
    addSubview(dividerBottomView)
    dividerBottomView.centerYAnchor.constraint(equalTo: rowBottomView.centerYAnchor).isActive = true
    dividerBottomView.centerXAnchor.constraint(equalTo: rowBottomView.centerXAnchor).isActive = true
    dividerBottomView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor).isActive = true
    dividerBottomView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(shoesContentView)
    shoesContentView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    shoesContentView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    shoesContentView.topAnchor.constraint(equalTo: shoesView.bottomAnchor).isActive = true
    shoesContentView.leftAnchor.constraint(equalTo: rowBottomView.leftAnchor).isActive = true
    
    addSubview(shoesContentLabel)
    shoesContentLabel.centerXAnchor.constraint(equalTo: shoesContentView.centerXAnchor).isActive = true
    shoesContentLabel.topAnchor.constraint(equalTo: shoesContentView.topAnchor, constant: 5).isActive = true
    
    addSubview(topContentView)
    topContentView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    topContentView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    topContentView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    topContentView.leftAnchor.constraint(equalTo: shoesContentView.rightAnchor).isActive = true
    
    addSubview(topContentLabel)
    topContentLabel.centerXAnchor.constraint(equalTo: topContentView.centerXAnchor).isActive = true
    topContentLabel.topAnchor.constraint(equalTo: topContentView.topAnchor, constant: 5).isActive = true
    
    addSubview(bottomContentView)
    bottomContentView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    bottomContentView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    bottomContentView.topAnchor.constraint(equalTo: bottomView.bottomAnchor).isActive = true
    bottomContentView.leftAnchor.constraint(equalTo: topContentView.rightAnchor).isActive = true
    
    addSubview(bottomContentLabel)
    bottomContentLabel.centerXAnchor.constraint(equalTo: bottomContentView.centerXAnchor).isActive = true
    bottomContentLabel.topAnchor.constraint(equalTo: bottomContentView.topAnchor, constant: 5).isActive = true
    
    addSubview(hairContentView)
    hairContentView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    hairContentView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    hairContentView.topAnchor.constraint(equalTo: hairView.bottomAnchor).isActive = true
    hairContentView.leftAnchor.constraint(equalTo: bottomContentView.rightAnchor).isActive = true
    
    addSubview(hairContentLabel)
    hairContentLabel.centerXAnchor.constraint(equalTo: hairContentView.centerXAnchor).isActive = true
    hairContentLabel.topAnchor.constraint(equalTo: hairContentView.topAnchor, constant: 5).isActive = true
    
    addSubview(eyesContentView)
    eyesContentView.heightAnchor.constraint(equalTo: rowBottomView.heightAnchor, multiplier: 1/2).isActive = true
    eyesContentView.widthAnchor.constraint(equalTo: rowBottomView.widthAnchor, multiplier: 1/5).isActive = true
    eyesContentView.topAnchor.constraint(equalTo: eyesView.bottomAnchor).isActive = true
    eyesContentView.leftAnchor.constraint(equalTo: hairContentView.rightAnchor).isActive = true
    
    addSubview(eyesContentLabel)
    eyesContentLabel.centerXAnchor.constraint(equalTo: eyesContentView.centerXAnchor).isActive = true
    eyesContentLabel.topAnchor.constraint(equalTo: eyesContentView.topAnchor, constant: 5).isActive = true
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
