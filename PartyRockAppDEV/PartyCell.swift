//
//  PartyCell.swift
//  PartyRockAppDEV
//
//  Created by William H Fulton IV on 2/19/17.
//  Copyright © 2017 IVdevelopment. All rights reserved.
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
    //TODO: set image from URL
    
    }



}
