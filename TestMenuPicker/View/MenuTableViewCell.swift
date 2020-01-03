//
//  MenuTableViewCell.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 02/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var delegate: MenuTableViewCellDelegate?
    var menuList = [Menu]()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func layoutSubviews() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

extension MenuTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        cell.menu = menuList[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectedMenu(menu: menuList[indexPath.row])
    }
    
}

protocol MenuTableViewCellDelegate {
    func didSelectedMenu(menu: Menu)
}
