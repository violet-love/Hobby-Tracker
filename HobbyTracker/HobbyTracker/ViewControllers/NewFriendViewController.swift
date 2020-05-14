//
//  NewFriendViewController.swift
//  HobbyTracker
//
//  Created by Violet Lavender Love on 5/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class NewFriendViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var homeTownTextField: UITextField!
    @IBOutlet var hobby1TextField: UITextField!
    @IBOutlet var hobby2TextField: UITextField!
    @IBOutlet var hobby3TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func save(_ sender: Any) {
        
    }
    @IBAction func cancel(_ sender: Any) {
        
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
