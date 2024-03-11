//
//  ViewController.swift
//  Login
//
//  Created by Diego Quintanilla  on 11/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotPssButton: UIButton!
    @IBOutlet var forgotUserButton: UIButton!
    @IBOutlet var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPssButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userTextField.text
        }

    }
    @IBAction func pressUserForgot(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotSomething", sender: sender)
    }
    @IBAction func pressPwdForgot(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotSomething", sender: sender)
    }
    
}

