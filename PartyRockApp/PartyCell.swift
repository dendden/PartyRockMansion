//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Денис Трясунов on 11/2/16.
//  Copyright © 2016 Денис Трясунов. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do {
                let imageData = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: imageData)
                }
            } catch {
                //TODO: handle error
            }
        }
    }

}
