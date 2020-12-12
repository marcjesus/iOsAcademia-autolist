//
//  TableViewCell.swift
//  autolist
//
//  Created by Marc Jesus on 02/12/2020.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var logoimage: UIImageView!
    @IBOutlet weak var marca: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func Init(_ imageName: String, title:String) {
        logoimage.image = UIImage (named: imageName)
        marca.text = title
    }
    
}
