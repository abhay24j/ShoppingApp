//
//  NewsTableViewCell.swift
//  TryNewsApi
//
//  Created by Abhay Kmar on 17/06/22.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var authorLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var articleDescriptionLbl: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
