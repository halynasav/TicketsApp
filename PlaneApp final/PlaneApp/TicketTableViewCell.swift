//
//  TicketTableViewCell.swift
//  PlaneApp
//
//  Created by Oleksandra Solomkina on 03.06.2024.
//

import UIKit

class TicketTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var fromLocatioLabel: UILabel!
    @IBOutlet weak var toLocationLabel: UILabel!
    @IBOutlet weak var fromCityLabel: UILabel!
    @IBOutlet weak var toCityLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        config()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config () {
        statusLabel.layer.cornerRadius = 16
        detailsView.layer.cornerRadius = 16
        
    }

}
