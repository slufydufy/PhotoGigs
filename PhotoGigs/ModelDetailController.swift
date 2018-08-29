//
//  DetailModelController.swift
//  PhotoGigs
//
//  Created by eatikiadm on 18/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class ModelDetailController : UICollectionViewController {
    private let bannerCell = "bannerCell"
    private let actionCell = "actionCell"
    private let galleryCell = "galleryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView?.backgroundColor = UIColor(white: 1, alpha: 0.95)
        collectionView?.register(BannerCell.self, forCellWithReuseIdentifier: bannerCell)
        collectionView?.register(ActionCell.self, forCellWithReuseIdentifier: actionCell)
        collectionView?.register(GalleryCell.self, forCellWithReuseIdentifier: galleryCell)
//        self.title = "PhotoGigs"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel , target: self, action: #selector(backButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(handleEdit))
    }
    
    @objc func backButton() {
        dismiss(animated: true, completion: nil)
    }
  
    @objc func handleEdit() {
//        present(ModelEdit(), animated: true, completion: nil)
        present(UINavigationController(rootViewController: ModelEdit()), animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


extension ModelDetailController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: bannerCell, for: indexPath) as! BannerCell
            return cell
        }
        else if indexPath.row == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: actionCell, for: indexPath) as! ActionCell
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: galleryCell, for: indexPath) as! GalleryCell
            return cell
        }
    }
}

extension ModelDetailController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.row == 0 {
            return CGSize(width: view.frame.width, height: 220)
        }
        else if indexPath.row == 1 {
            return CGSize(width: view.frame.width, height: 140)
        }
        else {
            return CGSize(width: view.frame.width, height: 400)
        }
    }
}
