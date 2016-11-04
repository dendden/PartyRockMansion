//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Денис Трясунов on 11/1/16.
//  Copyright © 2016 Денис Трясунов. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pr1 = PartyRock.createPartyRock(id: "TrVLu9p65a0", title: "Where the Sun Goes feat. Stevie Wonder")
        let pr2 = PartyRock.createPartyRock(id: "ev4bY1SkZLg", title: "Lights Out")
        let pr3 = PartyRock.createPartyRock(id: "Md-8YlE-KhA", title: "Booty Man")
        let pr4 = PartyRock.createPartyRock(id: "tWyuglGCKgE", title: "Juicy Wiggle")
        let pr5 = PartyRock.createPartyRock(id: "xGiBiHocSZM", title: "New Thang")
        let pr6 = PartyRock.createPartyRock(id: "1w9DiGlZksU", title: "Let's Get Ridiculous")
        let pr7 = PartyRock.createPartyRock(id: "BgUvPw0OdU0", title: "Bring Out The Bottles")
        
        partyRocks.append(pr1)
        partyRocks.append(pr2)
        partyRocks.append(pr3)
        partyRocks.append(pr4)
        partyRocks.append(pr5)
        partyRocks.append(pr6)
        partyRocks.append(pr7)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}

