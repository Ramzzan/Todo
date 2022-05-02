//
//  ViewController.swift
//  Todo
//
//  Created by Waleed on 01/05/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addButton(_ sender: Any) {
        
    }
    
    var taskList: [Task] = [
        Task(name: "task 1", date: Date()),
        Task(name: "task 2", date: Date()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY hh:mm:ss a"
        let dateString = dateFormatter.string(from: taskList[indexPath.row].date)
        
        cell.textLabel?.text = taskList[indexPath.row].name
        cell.detailTextLabel?.text = dateString
        return cell
    }

}

