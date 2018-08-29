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
  private let fullname = "fullname"
  private let city = "city"
  private let height = "height"
  private let weight = "weight"
  private let bust = "bust"
  private let waist = "waist"
  private let hips = "hips"
  private let shoes = "shoes"
  private let topSize = "topSize"
  private let bottomSize = "bottomSize"
  private let hair = "hair"
  private let eyes = "eyes"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.backgroundColor = UIColor(white: 1, alpha: 0.95)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(PictureCell.self, forCellReuseIdentifier: pictureCell)
    tableView.register(FullNameCell.self, forCellReuseIdentifier: fullname)
    tableView.register(CityCell.self, forCellReuseIdentifier: city)
    tableView.register(HeightCell.self, forCellReuseIdentifier: height)
    tableView.register(WeightCell.self, forCellReuseIdentifier: weight)
    tableView.register(BustCell.self, forCellReuseIdentifier: bust)
    tableView.register(WaistCell.self, forCellReuseIdentifier: waist)
    tableView.register(HipsCell.self, forCellReuseIdentifier: hips)
    tableView.register(ShoesCell.self, forCellReuseIdentifier: shoes)
    tableView.register(TopSizeCell.self, forCellReuseIdentifier: topSize)
    tableView.register(BottomSizeCell.self, forCellReuseIdentifier: bottomSize)
    tableView.register(HairCell.self, forCellReuseIdentifier: hair)
    tableView.register(EyesCell.self, forCellReuseIdentifier: eyes)
    
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel , target: self, action: #selector(backButton))
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(handleSave))
    setupView()
  }

  @objc func backButton() {
    dismiss(animated: true, completion: nil)
  }
  
  @objc func handleSave() {
    dismiss(animated: true, completion: nil)
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
    return 12
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.row == 0 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "pictureCell", for: indexPath) as! PictureCell
      cell.textLabel?.text = "Profile Picture"
      return cell
    } else if indexPath.row == 1 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "fullname", for: indexPath) as! FullNameCell
      return cell
    } else if indexPath.row == 2 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "city", for: indexPath) as! CityCell
      cell.textLabel?.text = "City"
      return cell
    } else if indexPath.row == 3 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "height", for: indexPath) as! HeightCell
      cell.textLabel?.text = "Height"
      return cell
    } else if indexPath.row == 4 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "weight", for: indexPath) as! WeightCell
      cell.textLabel?.text = "Weight"
      return cell
    } else if indexPath.row == 5 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "bust", for: indexPath) as! BustCell
      cell.textLabel?.text = "Bust Size"
      return cell
    } else if indexPath.row == 6 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "waist", for: indexPath) as! WaistCell
      cell.textLabel?.text = "Waist Size"
      return cell
    } else if indexPath.row == 7 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "hips", for: indexPath) as! HipsCell
      cell.textLabel?.text = "Hips Size"
      return cell
    } else if indexPath.row == 8 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "shoes", for: indexPath) as! ShoesCell
      cell.textLabel?.text = "Shoes Size"
      return cell
    } else if indexPath.row == 9 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "topSize", for: indexPath) as! TopSizeCell
      cell.textLabel?.text = "Top Size"
      return cell
    } else if indexPath.row == 10 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "bottomSize", for: indexPath) as! BottomSizeCell
      cell.textLabel?.text = "Bottom Size"
      return cell
    } else if indexPath.row == 11 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "hair", for: indexPath) as! HairCell
      cell.textLabel?.text = "Hair Color"
      return cell
    } else {
      let cell = tableView.dequeueReusableCell(withIdentifier: "eyes", for: indexPath) as! EyesCell
      cell.textLabel?.text = "Eyes Color"
      return cell
    }
  }
}

class PictureCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class FullNameCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  let nameLabel : UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "Full Name"
    lbl.font = UIFont(name: "Avenir-Heavy", size: 11)
    lbl.textColor = UIColor(red: 41/255, green: 172/255, blue: 226/255, alpha: 1)
    return lbl
  }()
  
  let nameText : UITextField = {
    let txt = UITextField()
    txt.translatesAutoresizingMaskIntoConstraints = false
    txt.font = UIFont(name: "Avenir-Light", size: 13)
    txt.textColor = UIColor.black
    return txt
  }()
  
  func setupView() {
    addSubview(nameLabel)
    nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
    nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
    
    addSubview(nameText)
    nameText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
    nameText.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 15).isActive = true
    nameText.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class CityCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class HeightCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class WeightCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class BustCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class WaistCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class HipsCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class ShoesCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class TopSizeCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class BottomSizeCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class HairCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class EyesCell : UITableViewCell {
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    setupView()
  }
  
  func setupView() {
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}



