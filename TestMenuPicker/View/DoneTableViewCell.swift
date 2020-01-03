//
//  DoneTableViewCell.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 02/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class DoneTableViewCell: UITableViewCell {
    
    var delegate : DoneDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func doneAction(_ sender: Any) {
        self.delegate?.didDoneTapped()
    }
}

protocol DoneDelegate {
    func didDoneTapped()
}
