//
//  ViewController.swift
//  PhotoGigs
//
//  Created by eatikiadm on 17/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class ModelsController: UICollectionViewController {
    private let modelCell = "modelCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView?.backgroundColor = UIColor(white: 1, alpha: 0.95)
        collectionView?.register(ModelCell.self, forCellWithReuseIdentifier: modelCell)
        self.title = "PhotoGigs"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ModelsController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: modelCell, for: indexPath) as! ModelCell
    }
}

extension ModelsController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 220)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let layout = UICollectionViewFlowLayout()
        let vc = UINavigationController(rootViewController: ModelDetailController(collectionViewLayout: layout))
        present(vc, animated: true, completion: nil)
    }
}


class ModelCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        
        setupview()
    }
    
    let modelImage : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "model2")
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        return img
    }()
    
    let topView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        return view
    }()
    
    let profileImage : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "profile2")
        img.layer.masksToBounds = false
        img.layer.cornerRadius = 22.5
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        return img
    }()
    
    let userNameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Samantha Young"
        label.font = UIFont(name: "Avenir-Light", size: 16)
        label.textColor = UIColor.white
        return label
    }()
    
    let locationLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jakarta"
        label.font = UIFont(name: "Avenir-Light", size: 12)
        label.textColor = UIColor.white
        return label
    }()
    
    func setupview() {
        addSubview(modelImage)
        modelImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        modelImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        modelImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        modelImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        addSubview(topView)
//        topView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        topView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        topView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/4).isActive = true
        
        addSubview(profileImage)
        profileImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        profileImage.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        addSubview(userNameLabel)
        userNameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 10).isActive = true
        userNameLabel.topAnchor.constraint(equalTo: profileImage.topAnchor).isActive = true
        
        addSubview(locationLabel)
        locationLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 10).isActive = true
        locationLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 5).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





