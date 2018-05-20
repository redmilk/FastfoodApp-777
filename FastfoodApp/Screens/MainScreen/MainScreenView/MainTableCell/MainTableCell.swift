//
//  MainTableCell.swift
//  FastfoodApp
//
//  Created by Artem on 5/19/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit

class MainTableCell: UITableViewCell {

    
    @IBOutlet weak var contentsView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var bottomContainer: UIView!
    @IBOutlet weak var purchaseButton: UIButton!
    @IBOutlet weak var priceLbl: UILabel!
    
    static var identifier: String = "MainTableCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .none
        contentsView.addShadow()
        //contentsView.addCornerRadius()
        
        purchaseButton.addCornerRadius()
        purchaseButton.addBorder(width: 1.0, color: .orange)
        purchaseButton.addShadow()
    }
    
    @IBAction func purchasePressed(_ sender: Any) {
    }
    
    
}
