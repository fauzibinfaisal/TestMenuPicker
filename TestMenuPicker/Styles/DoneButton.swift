//
//  DoneButton.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 02/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class DoneButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor      = UIColor.primary
        titleLabel?.font     = UIFont.boldSystemFont(ofSize: 16)
        layer.cornerRadius   = 8

    }

}
