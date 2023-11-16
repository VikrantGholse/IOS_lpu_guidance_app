//
//  Help or Know.swift
//  final project
//
//  Created by Vikrant Gholse on 22/10/23.
//

import UIKit

class Help_or_Know: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if darkmode == true
        {
//            mainmenu.textColor = UIColor.white
            self.view.backgroundColor = UIColor.systemOrange
        }
        else
        {
//            mainmenu.textColor = UIColor.black
            self.view.backgroundColor = UIColor.darkGray
        }


        // Do any additional setup after loading the view.
    }
    
//    @IBOutlet weak var help_or_know: UISwitch!
//    @IBAction func help_or_know_action(_ sender: UISwitch) {
//
//    }
//    @IBAction func nxt(_ sender: UIButton) {
//
//        if help_or_know.isOn == true{
//
//            performSegue(withIdentifier: "seg2", sender: self)
//        }
//        else if help_or_know.isOn == false{
//
//            performSegue(withIdentifier: "chain2", sender: self)
//        }
//
//      }
    
    
    @IBAction func help(_ sender: UIButton) {
        
        performSegue(withIdentifier: "chain2", sender: self)
    }
    @IBAction func know(_ sender: UIButton) {
        
        performSegue(withIdentifier: "seg2", sender: self)
    }
    
    @IBAction func syllabus(_ sender: UIButton) {
        performSegue(withIdentifier: "tosyllabus", sender: self)
        
    }
    
}
