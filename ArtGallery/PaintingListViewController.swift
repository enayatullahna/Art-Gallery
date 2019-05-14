//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Enayatullah Naseri on 5/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingTableViewCellDelegate {
    func likeButtonTap(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(painting: painting)
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

        
    }
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else {return UITableViewCell() }
        
        let painting = paintingController.paintings[indexPath.row]
        cell.delegate = self
        cell.painting = painting
        
        return cell
    }
    
    let paintingController = PaintingController()
    

}
