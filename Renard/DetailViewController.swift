//
//  DetailViewController.swift
//  Renard
//
//  Created by Cristian Rojas on 10/06/2020.
//  Copyright © 2020 Cristian Rojas. All rights reserved.
//

import UIKit

class DetailViewController: ViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    var activity : Activity!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.activity.name
        self.countLabel.text = "\(self.activity.count!)"
        self.goalLabel.text = "\(self.activity.goal!)"
    }
    
}
