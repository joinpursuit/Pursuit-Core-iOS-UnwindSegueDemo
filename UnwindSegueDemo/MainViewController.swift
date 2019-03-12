//
//  ViewController.swift
//  UnwindSegueDemo
//
//  Created by Alex Paul on 3/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var fullnameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // unwind segue step 1:
  @IBAction func unwindFromEditFullname(segue: UIStoryboardSegue) {
    let editFullnameVC = segue.source as! EditFullnameController
    fullnameLabel.text = editFullnameVC.fullnameTextField.text
  }

}

