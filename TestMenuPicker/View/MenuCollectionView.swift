//
//  MenuCollectionView.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 03/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class MenuCollectionView: UICollectionView {

  var isDynamicSizeRequired = false
  
  override func layoutSubviews() {
    super.layoutSubviews()
//    if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize) {
//      
//      if self.intrinsicContentSize.height > frame.size.height {
//        self.invalidateIntrinsicContentSize()
//      }
//      if isDynamicSizeRequired {
//        self.invalidateIntrinsicContentSize()
//      }
//    }
  }
  
//  override var intrinsicContentSize: CGSize {
//    return contentSize
//  }
}
