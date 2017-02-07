//
//  FoodListTableViewCell.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 2/2/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit

class FoodListTableViewCell: UITableViewCell {

    // Name of thr variable that will display pics with specific dimensions
    @IBOutlet var restaurantpic: UIImageView!
  
    // Name of variable that will display names with specific dimensions
    @IBOutlet var restaurantname: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
