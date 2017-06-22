//
//  NewToDo.swift
//  AHRyanFinalTask
//
//  Created by Andrew Ryan on 6/21/17.
//  Copyright © 2017 AndrewRyan. All rights reserved.
//

import UIKit

class NewToDo: UIViewController {
    
    var newTitle: String = ""
    var dueDate: Date? = nil
    var newPoms: Int? = nil
    
    @IBOutlet weak var userTitle: UITextField!
    
    @IBOutlet weak var pomPickerImage: UIImageView!
    
    @IBOutlet weak var noPoms: UILabel!
    @IBOutlet weak var pomSlider: UISlider!
    
    @IBAction func pomSliderChanged(_ sender: Any) {
        
        if pomSlider.value > 0 {
            noPoms.isHidden = true
            let poms = Int(pomSlider.value)
            let imageName = "tomatoX\(poms)"
            pomPickerImage.image = UIImage(named: imageName)
            pomPickerImage.contentMode = .scaleAspectFit
        }
        
    }
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    @IBAction func dueDateChanged(_ sender: Any) {
        
        dueDate = dueDatePicker.date
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if let newTitle = userTitle.text {
            
            let newToDo = ToDoItem(title: newTitle, quadrant: nil, pomodoros: Int(pomSlider.value), snoozeDate: nil, dueDate: dueDate)
            
            toDoData.append(newToDo)
            
            performSegue(withIdentifier: "newToDoAdded", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        }

}
