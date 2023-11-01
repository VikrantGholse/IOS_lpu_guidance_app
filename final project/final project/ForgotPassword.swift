//
//  ForgotPassword.swift
//  final project
//
//  Created by Vikrant Gholse on 23/10/23.
//

import UIKit

var recive_reg_no = String()


class ForgotPassword: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        r_num.text = "\(recive_reg_no)"

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var r_num: UITextField!

    @IBOutlet weak var contact_num: UITextField!
    
    
    @IBOutlet weak var e_mail: UITextField!
    
    @IBAction func get_mail(_ sender: UIButton) {
        
        let alert1 = UIAlertController(title: "Confirmation", message: "Registration number : \(r_num.text!)\n Contact no: \(contact_num.text!)\n Email: \(e_mail.text!)", preferredStyle: .actionSheet)
        
        alert1.addAction(UIAlertAction(title: "confirm", style: .default,handler: nil))
        
        alert1.addAction(UIAlertAction(title: "Cancel", style: .cancel,handler: nil))
        
        present(alert1, animated: true)
    }
}
