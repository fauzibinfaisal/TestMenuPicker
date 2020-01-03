//
//  MenuCollectionViewCell.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 02/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuLabel: UILabel!
    var menu = Menu(id: "", title: "Menu", selected: false)
    
    override func awakeFromNib() {
        //do something
    }
    
    override func layoutSubviews() {
        updateView()
    }
    
    func updateView(){
        menuLabel.text = menu.title
        if menu.selected {
            selectedCollectionStyle()
        } else {
           unselectedCollectionStyle()
        }
    }
    
    func selectedCollectionStyle() {
        layer.borderWidth = 0
        layer.backgroundColor = UIColor.primary.cgColor
        layer.cornerRadius = layer.bounds.height/2
        menuLabel.textColor = UIColor.white
    }
    
    func unselectedCollectionStyle() {
        layer.borderColor = UIColor.primary.cgColor
        layer.backgroundColor = UIColor.tranparent.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = layer.bounds.height/2
        menuLabel.textColor = UIColor.primary
    }
    
    var isHeightCalculated: Bool = false

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        if !isHeightCalculated {
            setNeedsLayout()
            layoutIfNeeded()
            let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
            var newFrame = layoutAttributes.frame
            newFrame.size.width = CGFloat(ceilf(Float(size.width)))
            layoutAttributes.frame = newFrame
//            isHeightCalculated = false
        }
        return layoutAttributes
    }
    
    
}
