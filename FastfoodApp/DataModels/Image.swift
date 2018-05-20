//
//  Image.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import Foundation
import UIKit

struct Image {
    var img: UIImage?
    //var imgLocalPath: String?
    //var imgUrlStr: String?
    var imgAssetName: String?
    
    init(img: UIImage? = nil, imgAssetName: String? = nil) {
        self.img = img
        self.imgAssetName = imgAssetName
    }
    
    func getImage(completion: (UIImage?) -> ()) {
     
        if let image = img {
            completion(image)
        } else if let imgName = imgAssetName {
            completion(UIImage(named: imgName))
        }
    }
}
