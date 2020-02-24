//
//  Message.swift
//  Chatee
//
//  Created by Denis M on 2020-02-24.
//  Copyright © 2020 Denis M. All rights reserved.
//

class Message {
  var sender: String
  var messageBody: String
  
  init(sender: String, messageBody: String){
    self.sender = sender
    self.messageBody = messageBody
  }
}
