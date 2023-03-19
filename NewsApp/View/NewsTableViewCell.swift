//
//  NewsTableViewCell.swift
//  NewsApp
//
//  Created by Yunus Emre Berdibek on 19.03.2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var tittleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


