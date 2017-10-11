//
//  ViewController.swift
//  FetchingContacts
//
//  Created by Akaanksha Sharman on 11/10/17.
//  Copyright © 2017 Akaanksha Sharman. All rights reserved.
//

import UIKit
import Contacts
import ContactsUI

class ViewController: UIViewController, CNContactPickerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    //MARK: - Btn action open contacts
    @IBAction func btnOpenContactsPressed(_ sender: Any) {
     let entityType = CNEntityType.contacts
    let authorizationStatus = CNContactStore.authorizationStatus(for: entityType)
        if authorizationStatus == .notDetermined {
            print("Not allowed to access")
            let contactStore =  CNContactStore.init()
            contactStore.requestAccess(for: entityType, completionHandler: { (success, nil) in
                if success {
                    self.openContacts()
                } else {
                    print("Not authorized")
                }
                
        })
        }else if authorizationStatus == .authorized {
            openContacts()
        }
    }
    
    //MARK: - Open Contacts
    func openContacts() {
        let contactPicker = CNContactPickerViewController()
        contactPicker.delegate = self
        self.present(contactPicker, animated: true, completion: nil)
    }

    //MARK: - CNContactPicker Delegate
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
//    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
//        //when user selects any contacts
//        let fullName = "\(contact.givenName) \(contact.familyName)"
//        print(fullName)
//        print(contact.phoneNumbers[0])
//        
//        
//    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        
        
        
        
        
        print(contacts)
        
        
        
    }
}

