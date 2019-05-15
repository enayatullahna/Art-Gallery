//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Enayatullah Naseri on 5/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    init() {
        loadPaintingFromAssets()
    }
    
    func loadPaintingFromAssets() {
        for x in 1...12 { // selcet images between 1 to 12 at the assets.
            let image: String = "Image\(x)"
            guard let UIImage = UIImage(named: image) else {return}
            let painting = Painting(image: UIImage)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(painting: Painting){
        //change true to false and false to true
        painting.isLiked = !painting.isLiked
    }
}
