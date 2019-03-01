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
        
        let mySubject = subjectTextField.text
        let myAssignment = assignmentTextField.text
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }

}
