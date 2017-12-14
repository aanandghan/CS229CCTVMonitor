//
//  ViewController.swift
//  CCTVMonitor
//
//  Created by Anand Joshi on 12/3/17.
//  Copyright © 2017 Anand Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items: [String] = []
    
    @IBOutlet
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        let date = Date()
        let dateString = DateFormatter.localizedString(from: date, dateStyle: .short, timeStyle: .long)
        cell.textLabel?.text = dateString + " " + self.items[indexPath.row]
        if indexPath.row % 2 == 0 {cell.backgroundColor = UIColor.lightGray}
        return cell
        //return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
    func AddItem(_ data: String) {
        print("ViewController appending notification data to list")
        self.items.append(data)
    }

}

