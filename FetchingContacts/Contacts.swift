//
//  Contacts.swift
//  FetchingContacts
//
//  Created by Akaanksha Sharman on 11/10/17.
//  Copyright © 2017 Akaanksha Sharman. All rights reserved.
//

import Foundation
class Contacts {
    
    var name : String? = ""
    var phoneNo : String? = ""
    var image : String? = ""
    
    init() {
        
    }
    
    init(name : String , phoneNo : String, image : String) {
     self.name = name
    self.phoneNo = phoneNo
        self.image = image
    }
}
