//
//  GalleryCell.swift
//  PhotoGigs
//
//  Created by Malfenro on 20/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit


class GalleryCell : UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
  
  private let imageThumb = "imageThumb"
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.white
    
    setupView()
  }
  
  let galleryCV : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.minimumLineSpacing = 2
    layout.minimumInteritemSpacing = 2
    
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cv.backgroundColor = UIColor.white
    cv.translatesAutoresizingMaskIntoConstraints = false
    cv.alwaysBounceVertical = false
    return cv
  }()
  
  let allButton : UIButton = {
    let btn = UIButton(type: .system)
    btn.setTitle("View All", for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.addTarget(self, action: #selector(handleTapAll), for: .touchUpInside)
    return btn
  }()
  
  @objc func handleTapAll() {
    
  }
  
  func setupView() {
    
    galleryCV.register(ThumbImage.self, forCellWithReuseIdentifier: imageThumb)
    galleryCV.dataSource = self
    galleryCV.delegate = self
    
    
    addSubview(galleryCV)
    galleryCV.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    galleryCV.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    galleryCV.heightAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    
    addSubview(allButton)
    allButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    allButton.topAnchor.constraint(equalTo: galleryCV.bottomAnchor, constant: 1).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension GalleryCell {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
  }
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageThumb, for: indexPath)
    return cell
  }
}

extension GalleryCell : UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: CGFloat(collectionView.frame.size.width / 2) - 1, height: CGFloat(collectionView.frame.size.height / 2))
  }
}




class ThumbImage : UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.white
    setupView()
  }
  
  let thumbImage : UIImageView = {
    let img = UIImageView()
    img.translatesAutoresizingMaskIntoConstraints = false
    img.image = UIImage(named: "model2")
    img.contentMode = .center
    img.clipsToBounds = true
    img.contentMode = .scaleAspectFill
    return img
  }()
  
  func setupView() {
    addSubview(thumbImage)
    thumbImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    thumbImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    thumbImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
    thumbImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
