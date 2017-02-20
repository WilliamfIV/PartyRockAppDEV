//
//  ViewController.swift
//  PartyRockAppDEV
//
//  Created by William H Fulton IV on 2/18/17.
//  Copyright © 2017 IVdevelopment. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var tableView: UITableView!
    
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let p1 = PartyRock(imageURL: "http://shannonmariegd.com/wp-content/uploads/2013/03/Party-Rock-FINAL1.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "Where The Sun Goes Down")
        
       partyRocks.append(p1)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
        
            return cell
            
        }else{
            return UITableViewCell()
        }
        
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }


}
