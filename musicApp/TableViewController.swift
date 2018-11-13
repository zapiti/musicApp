//
//  ViewController.swift
//  musicApp
//
//  Created by Nathan Ranghel on 19/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

class TableViewController : UITableViewController {
    
    var music = [String]()
    
    let musicCelID = "musicCelID"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        for i in 1...10{
            music.append( "teste de layout \(i)")
        }
        
        
        self.tableView.register(MusicTableViewCell.self, forCellReuseIdentifier: musicCelID)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: musicCelID) as! MusicTableViewCell
    
        
        return cell
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
}

