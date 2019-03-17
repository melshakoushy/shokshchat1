//
//  ChannelCell.swift
//  ShokshChat
//
//  Created by Mahmoud Elshakoushy on 3/17/19.
//  Copyright © 2019 Elshakoushy. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    
    //outlets
    
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    func configureCell(channel: Channel) {
        let title = channel.name ?? ""
        channelName.text = "#\(title)"
    }
}
