//
//  GameViewController.swift
//  Caxeta
//
//  Created by Alexandre Possebom on 31/12/15.
//  Copyright © 2015 Alexandre Possebom. All rights reserved.
//

import UIKit

class GameViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellPlayerGame", forIndexPath: indexPath) as! GameTableViewCell
        
        cell.gameViewController = self
        cell.player = DAO.getPlayersWillPlay()[indexPath.row]
        cell.labelNome.text = cell.player!.name
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DAO.getPlayersWillPlay().count
    }
    
}