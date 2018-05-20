//
//  DetailScreenController.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit

class DetailScreenController: UIViewController {
    
    @IBOutlet weak var detailScreenView: DetailScreenView!
    
    // inner service
    static func storyboardInstance() -> DetailScreenController? {
        let storyboard = UIStoryboard(name: "DetailScreen", bundle: nil)
        return storyboard.instantiateInitialViewController() as? DetailScreenController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
