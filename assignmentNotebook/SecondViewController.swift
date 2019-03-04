//
//  SecondViewController.swift
//  assignmentNotebook
//
//  Created by Olivia Mellen on 2/27/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var assignmentTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(subjectTextField.text)
        print(assignmentTextField.text)
        
        let userDefaults = UserDefaults.standard
        if let data = subjectTextField.text, let anotherData = assignmentTextField.text {
            userDefaults.set(data, forKey: "subject")
            userDefaults.set(anotherData, forKey: "assignment")
        }
        
        
    }

}
