//
//  DetailScreenView.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit

protocol DetailScreenViewDelegate: class {
    func detailScreenViewBackButtonPressed()
    func detailScreenViewCartButtonPressed()
}

class DetailScreenView: UIView {
    
    weak var delegate: DetailScreenViewDelegate?
        
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var iconsStack: UIStackView!
    @IBOutlet var icons: [UIImageView]!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var gramsLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var descreaseCounterButton: UIButton!
    @IBOutlet weak var increaseCounterButton: UIButton!
    @IBOutlet weak var counterLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    @IBOutlet var mainContainer: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetup()
    }
    
    private func initialSetup() {
        configureView()
        customizeView()
    }
    
    private func configureView() {
        Bundle.main.loadNibNamed("DetailScreenView", owner: self, options: nil)
        addSubview(mainContainer)
        mainContainer.frame = self.bounds
        mainContainer.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    private func customizeView() {
        for icon in icons {
            icon.addCornerRadius()
            icon.addShadow()
        }
        let controls = [backButton, cartButton, descriptionLbl, descreaseCounterButton, increaseCounterButton, addToCartButton] as [Any]
        controls.forEach { (control) in
            guard let cntrl = control as? UIView else {return}
            cntrl.addShadow()
            cntrl.addCornerRadius(radius: 20)
        }
    }
    
    
    private func addEffectsToView(_ view: UIView) {
        cartButton.clipsToBounds = true
        backButton.addShadow()
        backButton.addCornerRadius(radius: 20)

    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        delegate?.detailScreenViewBackButtonPressed()
    }
    
    @IBAction func cartPressed(_ sender: UIButton) {
        //delegate?.detailScreenViewCartButtonPressed()
        delegate?.detailScreenViewBackButtonPressed()

    }
    
    @IBAction func addToCartPressed(_ sender: UIButton) {
    }
    
    @IBAction func decreaseCounterPressed(_ sender: UIButton) {
    }
    
    @IBAction func increaseCounterPressed(_ sender: UIButton) {
    }
    
}

