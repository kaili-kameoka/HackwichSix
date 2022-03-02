//
//  ViewController.swift
//  HackwichSix
//
//  Created by Kaili Kameoka on 3/2/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var myFriends = ["Sara", "Nicole", "Grant"];
    var cities = ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier");
        let text = cities[indexPath.row];
        cell?.textLabel?.text = text;
        return cell!;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

