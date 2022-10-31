//
//  KakaoTalkTableViewCell.swift
//  4week_practice
//
//  Created by 고하영 on 2022/10/27.
//

import UIKit

class KakaoTalkTableViewCell: UITableViewCell {

    @IBOutlet weak var memberCountLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var messageCountBackgroundView: UIView!
    @IBOutlet weak var messageCountLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 17.5
        messageCountBackgroundView.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
