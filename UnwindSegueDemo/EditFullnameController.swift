//
//  EditFullnameController.swift
//  UnwindSegueDemo
//
//  Created by Alex Paul on 3/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class EditFullnameController: UIViewController {
  @IBOutlet weak var fullnameTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func cancel(_ sender: UIBarButtonItem) {
    dismiss(animated: true)
  }
  
  @IBAction func submit(_ sender: UIBarButtonItem) {
    // step 2: implement perform segue
    /* step 3: control-drag from the this view controller's (EditFullnameController) "yellow icon" in (storyboard) over to the "exit icon" and select the unwind segue you're interested in e.g "Unwind From Edit Fullname"
    */
    // step 4: name the unwind segue identifier in attributes inspector
    performSegue(withIdentifier: "Unwind From Edit Fullname", sender: self)
  }  
}
