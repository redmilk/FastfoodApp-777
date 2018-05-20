//
//  MainScreenController.swift
//  FastfoodApp
//
//  Created by Artem on 5/19/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit

extension MainScreenController : MainScreenViewDelegate {
    func didSelectRowWithModel(_ model: Food) {
        if let detail = DetailScreenController.storyboardInstance() {
            navigationController?.pushViewController(detail, animated: true)
        }
    }
    
    func menuPressed() {
        
    }
    
    func cartPressed() {
        
    }
    
    func splashPressed() {
        
    }
    
    
}

class MainScreenController: UIViewController {
    
    @IBOutlet weak var mainScreenView: MainScreenView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        /*
         Delegate for:
         - menu pressed
         - food selected
         - cart pressed
         - splash pressed
         */
        mainScreenView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
