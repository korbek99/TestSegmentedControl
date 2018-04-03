//
//  ViewController.swift
//  TestSegmentedControl
//
//  Created by Jose David Bustos H on 03-04-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    
    var data = [
        ["⚽️ Soccer",       "⛳️ Golf",      "🏀 Basketball",    "🏈 American Football",
         "⚾️ Baseball",     "🎾 Tennis",    "🏐 Valleyball",    "🏸 Badminton"],
        ["🍎 Apple",        "🍐 Pear",      "🍓 Strawberry",    "🥑 Avocado",
         "🍌 Banana",       "🍇 Grape",     "🍈 Melon",         "🍊 Orange",
         "🍑 Peach",        "🥝 Kiwi"]
    ]
    var p: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nib = UINib(nibName :"CustomCell" ,bundle:nil)
        tableView.register(nib, forCellReuseIdentifier: "customCell")
        tableView.backgroundColor = UIColor.darkGray
        p = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return data[p].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let str = data[p][indexPath.row].components(separatedBy: " ")
        cell.customInit(text: str[1], accessoryText: str[0])
        return cell
        
        
    }
    
    @IBAction func SwitchControlView(_ sender: UISegmentedControl) {
        
        p = sender.selectedSegmentIndex
        tableView.reloadData()
        
    }
}

