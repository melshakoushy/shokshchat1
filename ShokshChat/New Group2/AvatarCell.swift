//
//  AvatarCell.swift
//  ShokshChat
//
//  Created by Mahmoud Elshakoushy on 3/2/19.
//  Copyright © 2019 Elshakoushy. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    

    
}
