//
//  DataSource.swift
//  FastfoodApp
//
//  Created by Artem on 5/20/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import Foundation
import UIKit

class DataSource {
    
    // var coreDataStack = CoreDataStack()
    // var networking = Networking()
    
    private var dataArray = [Food]()
    
    var data: [Food] {
        return self.dataArray
    }
    
    init( ) {
        fillArray()
    }
    
    private func fillArray() {
        for i in 0...5 {
            let image = Image(img: UIImage(named: "pizza")!)
            var descr = "Описание "
            for _ in 0...i where i > 1 {
                descr = descr + "Пицца Дичь очкень вкусна осень вкусна фывалор флывоарф ываолыфвра ыловар лоар ывлоар ывалорыв аолырва олвра ова как вкуснааа"
            }
            let food = Food(image: image, description: descr, title: "Супер Пицца", price: 500.00)
            dataArray.append(food)
        }
    }
    
}
