//
//  FriendsListViewController.swift
//  HobbyTracker
//
//  Created by Violet Lavender Love on 5/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class FriendsListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var friends: [Friend] = [Friend(name: "Tim Cook", homeTown: "Mobile, Alabama", hobbies: ["Being CEO of Apple"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tell the table view that view controller are going to help it get the information it needs (delegate)
        tableView.dataSource = self

    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalNewFriend" {
            
            let newFriendVC = segue.destination as? NewFriendViewController
            
            //"Hey newFriendVC I'm the to talk to in order to add a friend to the friends array"
            newFriendVC?.delegate = self
        }
     
    }
  

}


extension FriendsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else {
            fatalError("Cell identifer is not of expected type FriendTableView. If you're a user, I'm sorry your app just crashed. Feel free to send me an angry letter.")
        }
        let friend = friends[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.homeTownLabel.text = friend.homeTown
        cell.hobbiesLabel.text = "\(friend.hobbies.count) hobby(ies)"
        
        return cell
    }
}

//I will follow the rules to add a new friend
extension FriendsListViewController: AddFriendDelegate {
    func friendWasCreated(friend: Friend) {
        friends.append(friend)
        tableView.reloadData()
    }
}
