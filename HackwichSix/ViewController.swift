//
//  ViewController.swift
//  HackwichSix
//
//  Created by Kaili Kameoka on 3/2/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriends = ["Kalapawai"];
    var cities = ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"]
    var myFriendsHomesArray = ["Kapolei"];

    var restaurantImageData = [String]();
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier");
        let text = myFriends[indexPath.row];
        cell?.textLabel?.text = text;
        cell?.detailTextLabel?.text = myFriendsHomesArray[indexPath.row]
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true);
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "PropertyList", ofType: "plist");
        let dict = NSDictionary(contentsOfFile: path!);
        restaurantImageData = dict!.object(forKey: "RestaurantImages") as! [String];
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            let s1 = segue.destination as! DetailViewController;
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!];
        }
        
        
    }
    

}

