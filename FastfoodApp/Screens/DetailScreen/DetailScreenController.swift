//
//  DetailScreenController.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit

extension DetailScreenController : DetailScreenViewDelegate {
    
    func detailScreenViewBackButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    func detailScreenViewCartButtonPressed() {
        //instantiate cart
    }
    
    
}

class DetailScreenController: UIViewController {
    
    @IBOutlet weak var detailScreenView: DetailScreenView!
    
    // inner service
    static func storyboardInstance() -> DetailScreenController? {
        let storyboard = UIStoryboard(name: "DetailScreen", bundle: nil)
        return storyboard.instantiateInitialViewController() as? DetailScreenController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailScreenView.delegate = self
        // Do any additional setup after loading the view.
    }



}
