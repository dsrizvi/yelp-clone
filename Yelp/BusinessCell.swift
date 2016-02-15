//
//  BusinessCell.swift
//  Yelp
//
//  Created by Focus on 2/14/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit
import AFNetworking

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var businessNameLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var business: Business!{
        didSet {
            businessNameLabel.text = business.name
            
            if business.imageURL != nil{
            thumbnailView.setImageWithURL(business.imageURL!)
            }
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            distanceLabel.text = business.distance
            starsImageView.setImageWithURL(business.ratingImageURL!)
            addressLabel.text = business.address
            categoryLabel.text = business.categories

        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbnailView.layer.cornerRadius = 3
        thumbnailView.clipsToBounds = true
        
        businessNameLabel.preferredMaxLayoutWidth = businessNameLabel.frame.size.width
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        businessNameLabel.preferredMaxLayoutWidth = businessNameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
