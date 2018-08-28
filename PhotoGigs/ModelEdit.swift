//
//  ModelEdit.swift
//  PhotoGigs
//
//  Created by Malfenro on 28/08/18.
//  Copyright © 2018 eatikiadm. All rights reserved.
//

import UIKit

class ModelEdit : UITableViewController {
  private let pictureCell = "pictureCell"
  private let testCell = "testCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.backgroundColor = UIColor(white: 1, alpha: 0.95)
    tableView.dataSource = self
    tableView.delegate = self
    self.tableView.register(PictureCell.self, forCellReuseIdentifier: pictureCell)
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: testCell)
    setupView()
  }
  
  let detailTableView : UITableView = {
    let tv = UITableView()
    tv.translatesAutoresizingMaskIntoConstraints = false
    
    return tv
  }()
  
  func setupView() {
    view.addSubview(detailTableView)
    detailTableView.topAnchor.constraint(equalTo: view.topAnchor)
  }
  
}

extension ModelEdit {
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 15
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.row == 0 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "pictureCell", for: indexPath) as! PictureCell
      return cell
    } else {
      let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
      return cell
    }
  }
}

class PictureCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
    backgroundColor = UIColor.red
  }
  
  let profilePicLabel : UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    
    return lbl
  }()
  
  func setupView() {
    addSubview(profilePicLabel)
    profilePicLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
    profilePicLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2).isActive = true
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}




