//
//  MyFriendsTableViewCell.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import UIKit

class MyFriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        avatarImage.layer.cornerRadius = 25
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
