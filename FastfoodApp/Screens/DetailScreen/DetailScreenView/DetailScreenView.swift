//
//  DetailScreenView.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit

class DetailScreenView: UIView {

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
    }
    
    private func configureView() {
        Bundle.main.loadNibNamed("DetailScreenView", owner: self, options: nil)
        addSubview(mainContainer)
        mainContainer.frame = self.bounds
        mainContainer.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
