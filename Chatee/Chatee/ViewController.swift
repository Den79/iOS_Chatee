//
//  ViewController.swift
//  Chatee
//
//  Created by Denis M on 2020-02-24.
//  Copyright © 2020 Denis M. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    var ref: DatabaseReference!
    ref = Database.database().reference()
    ref.setValue("Test")
  }

}

