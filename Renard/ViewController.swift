//
//  ViewController.swift
//  Renard
//
//  Created by Cristian Rojas on 10/06/2020.
//  Copyright © 2020 Cristian Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var activities = [Activity]()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var activity = Activity(name: "Meditación", goal: 500, count: 1)
        activities.append(activity)
        activity = Activity(name: "Natación", goal: 500, count: 1)
        activities.append(activity)
        activity = Activity(name: "Programación", goal: 500, count: 1)
        activities.append(activity)
        activity = Activity(name: "Bicicleta", goal: 500, count: 1)
        activities.append(activity)
        
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return self.activities.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let activity = activities[indexPath.row]
          let cellID = "ActivityCell"
      
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ActivityCell
          cell.nameLabel.text = activity.name
          cell.countLabel.text = "\(activity.count!)"
          cell.goalLabel.text = "\(activity.goal!)"
        
          return cell
      }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailView" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedActivity = self.activities[indexPath.row]
                let destinationViewController = segue.destination as! DetailViewController
                destinationViewController.activity = selectedActivity
            }
        }
    }
}

