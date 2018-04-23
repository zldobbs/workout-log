//
//  AddActivityViewController.swift
//  workout-log
//
//  Created by Zachary Dobbs on 4/22/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class AddActivityViewController: UIViewController {

    @IBOutlet weak var activityInput: UITextField!
    @IBOutlet weak var amountInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        activityInput.resignFirstResponder()
        amountInput.resignFirstResponder()
        weightInput.resignFirstResponder()
    }
    
    @IBAction func saveActivity(_ sender: Any) {
        // create a new activity
        print("creating activity...")
        let name = activityInput.text
        print("activity = \(name)")
        let amount = amountInput.text
        let weightText = weightInput.text ?? ""
        let weight = Double(weightText) ?? 0.0
        let date = Date()
        
        if let activity = Activity(name: name, amount: amount, weight: weight, date: date) {
            do {
                let managedContext = activity.managedObjectContext
                try managedContext?.save()
                self.navigationController?.popViewController(animated: true)
            }
            catch {
                print("Could not save workout")
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
