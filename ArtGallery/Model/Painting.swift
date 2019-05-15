//
//  Painting.swift
//  ArtGallery
//
//  Created by Enayatullah Naseri on 5/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
