//
//  Assignment.swift
//  assignmentNotebook
//
//  Created by Olivia Mellen on 2/26/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import Foundation

class Tasks {
    let subject: String
    let assignment: String
    
    init () {
        subject = ""
        assignment = ""
    }
    
    init (subject: String) {
        self.subject = subject
        self.assignment = ""
    }
    
    init(assignment: String) {
        self.assignment = assignment
        self.subject = ""
    }
    init(subject: String, assignment: String) {
        self.subject = subject
        self.assignment = assignment
    }
    
}
