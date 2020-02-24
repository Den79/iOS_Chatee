//
//  ChatViewController.swift
//  Chatee
//
//  Created by Denis M on 2020-02-24.
//  Copyright © 2020 Denis M. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  
  @IBOutlet weak var textField: UITextField!
  
  @IBAction func sendButtonTapped(_ sender: UIButton) {
    if let text = textField.text {
      let messagesDB = Database.database().reference().child("Messages")
      
      let messageDict = [
        "Sender": Auth.auth().currentUser?.email,
        "MessageBody": text
      ]
      
      // set value in firebase db
      messagesDB.childByAutoId().setValue(messageDict) { (error, ref) in
        if let err = error {
          print(err)
        } else {
          print("Message successfully saved")
        }
        
        // clear the textField after sending
        self.textField.text = ""
      }
    }
  }
  
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
