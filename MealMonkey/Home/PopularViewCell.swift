//
//  PopularViewCell.swift
//  MealMonkey
//
//  Created by Macbook Pro on 03/04/23.
//

import UIKit

class PopularViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var restoImageView: UIImageView!
    @IBOutlet var ratingAverageLabel: UILabel!
    @IBOutlet var ratingCountLabel: UILabel!
    @IBOutlet var restoCategoryLabel: UILabel!
    @IBOutlet var foodCategoryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
