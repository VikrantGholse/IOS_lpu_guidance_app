//
//  ViewController.swift
//  final project
//
//  Created by Vikrant Gholse on 22/10/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.animationImages=arr
        img.animationRepeatCount=0
        img.animationDuration=6
        img.startAnimating()
    }

    
    @IBOutlet weak var reg_no: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        
        darkmode = light
        
        if reg_no.text == "12016400" && pass.text == "abc"{
            performSegue(withIdentifier: "seg1", sender: self)
        }
        
        else{
            let alert = UIAlertController(title: "ERROR", message: "Registration no. or Password is incorrect", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Retry", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "dismiss", style: .destructive, handler: nil))
            
            present(alert, animated: true)
        }
        
    }
    @IBAction func forgot(_ sender: Any) {
        
        let r_no = reg_no.text!
        recive_reg_no = r_no
        print(recive_reg_no)
        
        performSegue(withIdentifier: "forgotpass", sender: self)
    }
    @IBOutlet weak var img: UIImageView!
    
    var arr : [UIImage] = [UIImage(named: "Unknown.jpeg")!,UIImage(named: "LPU.jpeg")!,UIImage(named: "slide-rank-merge.jpeg")!]
    
    var light : Bool = false


    
    @IBAction func theam(_ sender: UISwitch) {
        
        if sender.isOn {
            light = false
               applyDarkMode()
           } else {
               light = true
               applyLightMode()
           }
        
        
    }
    func applyDarkMode() {
        // Update UI elements for dark mode
        self.view.backgroundColor = .darkGray
//        someLabel.textColor = .white
//        login.backgroundColor = .darkGray
        // Adjust other UI elements as needed
    }

    func applyLightMode() {
        // Update UI elements for light mode
        self.view.backgroundColor = .orange
//        someLabel.textColor = .black
//        someButton.backgroundColor = .systemBlue
        // Adjust other UI elements as needed
    }

    
}

