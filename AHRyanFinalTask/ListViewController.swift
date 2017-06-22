//
//  ListViewController.swift
//  AHRyanFinalTask
//
//  Created by Andrew Ryan on 6/20/17.
//  Copyright © 2017 AndrewRyan. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
// MARK: - Identifier Constants
    
    var toDos: [ToDoItem] = toDoData
    
// MARK: - Interface Builder Outlets
    @IBOutlet weak var toDoList: UITableView!
    

//MARK: - TableView Controlss
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoViewCell", for: indexPath) as! ToDoViewCell
        let toDo = toDos[indexPath.row] as ToDoItem
        cell.toDo = toDo
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
// MARK: - Properties
// MARK: - View Controller Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }
    override func viewDidAppear(_ animated: Bool) {
        
        toDoList.reloadData()
    }

// MARK: - Navigation
// MARK: - IBActions
// MARK: - Helper Functions
    func imageForPoms(pomodoros: Int) -> UIImage?{
        let imageName = "tomatoX\(pomodoros).png"
        return UIImage(named: imageName)
    }
    
// MARK: - Delegates / Extensions


}
