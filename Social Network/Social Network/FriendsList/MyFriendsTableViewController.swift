//
//  MyFriendsTableViewController.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {

    var friends = FriendsDatabase().friendlist
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFriendsTableViewCell", for: indexPath) as! MyFriendsTableViewCell
        let name = friends[indexPath.row].name
        let avatar = friends[indexPath.row].photo[0]
        cell.nameLabel.text = name
        cell.avatarImage.image = UIImage(named: avatar)
        return cell
    }
    
}
