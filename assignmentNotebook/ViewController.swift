//
//  ViewController.swift
//  assignmentNotebook
//
//  Created by Olivia Mellen on 2/26/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var tasks:[Tasks] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myTableView.dataSource = self
        
        let firstTask = Tasks(subject: "Biology", assignment: "pg. 23-27")
        let secondTask = Tasks(subject: "Mobile Apps", assignment: "Assignment Notebook App")
        let thirdTask = Tasks(subject: "HWOC", assignment: "Mockingbird: Chapter 8")
        tasks = [firstTask, secondTask, thirdTask]
    }
    
    
    @IBAction func whenButtonPressed(_ sender: Any)
    {
        
    }
    
    
    
    
    //delete
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        
        if editingStyle == .delete {
           tasks.remove(at: indexPath.row)
            
           tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    //tableView

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            cell.textLabel?.text = tasks[indexPath.row].subject
            cell.detailTextLabel?.text = tasks[indexPath.row].assignment
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
    }
    
}

