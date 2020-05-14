//
//  NewFriendViewController.swift
//  HobbyTracker
//
//  Created by Violet Lavender Love on 5/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

//The two kinds of requests are :
    //- A request for some data (numberOfRows. It's a function that has a return type
    //- A request to do something on the delegator's behalf. (Add a friend to the array that it doesn't have direct access to itself)
protocol AddFriendDelegate {
    func friendWasCreated(friend:Friend)
}


class NewFriendViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var homeTownTextField: UITextField!
    @IBOutlet var hobby1TextField: UITextField!
    @IBOutlet var hobby2TextField: UITextField!
    @IBOutlet var hobby3TextField: UITextField!
    
    var delegate: AddFriendDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    @IBAction func save(_ sender: Any) {
        
        //grab name and hometown
        guard let name = nameTextField.text,
            let homeTown = homeTownTextField.text else { return }
        
        //get hobbies
        var hobbies: [String] = []
        
        if let hobby1 = hobby1TextField.text,
            hobby1 != "" {
            hobbies.append(hobby1)
        }
        
        if let hobby2 = hobby2TextField.text,
            hobby2 != "" {
            hobbies.append(hobby2)
        }
        
        if let hobby3 = hobby3TextField.text,
            hobby3 != "" {
            hobbies.append(hobby3)
        }
        
        //create Friend Object
        let friend = Friend(name: name, homeTown: homeTown, hobbies: hobbies)
        
        //add it to the friends array in the FriendsListViewController
        //tell the delegate that a friend was created so it can add the friend we give it to the ' var friends' array
        delegate?.friendWasCreated(friend: friend)
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
