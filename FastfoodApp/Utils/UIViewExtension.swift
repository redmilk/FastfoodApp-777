//
//  UIViewExtension.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addShadow(color: UIColor = UIColor.gray,
                   opacity: Float = 1.0,
                   offset: CGSize = CGSize(width: 0, height: 3),
                   radius: CGFloat = 5) {
        
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
    }
    
    func addCornerRadius(radius: CGFloat = 6) {
        self.layer.cornerRadius = radius
    }
    
    func addBorder(width: CGFloat = 1.0, color: UIColor = .orange) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    
}
