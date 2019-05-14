//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Enayatullah Naseri on 5/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol PaintingTableViewCellDelegate: class {
    func likeButtonTap (on ell:
        PaintingTableViewCell)
}
class PaintingTableViewCell: UITableViewCell {

    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func likeButtonTappedAction(_ sender: Any) {
        delegate?.likeButtonTap(on: self)
    }
    
    
    
    
    @IBOutlet weak var paintingImage: UIImageView!
    @IBOutlet weak var likeButtonTapped: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    func updateViews() {
        
        guard let painting = painting else {return}
        paintingImage.image = painting.image
        if(painting.isLiked) {
            likeButtonTapped.setTitle("Unlike", for: .normal)
        }else {
            likeButtonTapped.setTitle("Like", for: .normal)
        }
        
    }

}
