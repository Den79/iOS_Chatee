//
//  MessageCell.swift
//  Chatee
//
//  Created by Denis M on 2020-02-24.
//  Copyright © 2020 Denis M. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

  @IBOutlet weak var senderImageView: UIImageView!
  
  @IBOutlet weak var messageBodyBackground: UIView!
  
  @IBOutlet weak var messageBodyLabel: UILabel!
  
  @IBOutlet weak var senderLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
