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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension FriendsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)
        
        return cell
    }
}
