//
//  ViewController.swift
//  emoji dictionay
//
//  Created by Andrew Hughes on 23/05/2018.
//  Copyright © 2018 Andrew Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var emojis = ["😭","😕","🤪","❤️","😍","💋","💪🏼"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = (self as UITableViewDataSource)
        tableview.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection Section: Int) -> Int {
        return emojis.count
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

