//
//  Need_Help.swift
//  final project
//
//  Created by Vikrant Gholse on 22/10/23.
//

import UIKit

var darkmode  = Bool()

class Need_Help: UIViewController {

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
    
    func performseg() {
        performSegue(withIdentifier: "whathelp", sender: self)
    }

    @IBOutlet weak var course: UITextField!

    @IBAction func instruction(_ sender: UIButton) {

        let alert2 = UIAlertController(title: "INSTRUCTION", message: "ENTERED COURSE NAME SHOULD BE IN CAPITAL LETTER FOR EG. : B.TECH CSE", preferredStyle: .alert)

        alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        present(alert2, animated: true)


    }

     @IBAction func year(_ sender: UISegmentedControl) {

         let selectedSegmentIndex = sender.selectedSegmentIndex

         switch selectedSegmentIndex {
             case 0:
             
             view.backgroundColor = UIColor.systemPink
             
             if course.text == ""{
                 
                 let err = UIAlertController(title: "ERROR", message: "Enter course name", preferredStyle: .alert)
                 err.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
                 
                 present(err, animated: true)
             }
             else{

             let first = UIAlertController(title: "confirm", message: " you are in \(String(describing: course.text!)) first year", preferredStyle: .alert)
             first.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
             first.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self]action -> Void in performseg()}))
                 present(first, animated: true)}

             case 1:
             if course.text == ""{
                 
                 let err = UIAlertController(title: "ERROR", message: "Enter course name", preferredStyle: .alert)
                 err.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
                 present(err, animated: true)

             }
             else{
             let second = UIAlertController(title: "confirm", message: " you are in \(String(describing: course.text!)) second year", preferredStyle: .alert)
             second.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))

             second.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self]action -> Void in performseg()}))
                 present(second, animated: true)}
             
            case 2:
             if course.text == ""{
                 
                 let err = UIAlertController(title: "ERROR", message: "Enter course name", preferredStyle: .alert)
                 err.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
                 present(err, animated: true)

             }
             else{
             let third = UIAlertController(title: "confirm", message: " you are in \( course.text!) third year", preferredStyle: .alert)
             third.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))

             third.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self]action -> Void in performseg()}))
                 present(third, animated: true)}

         case 3:
             if course.text == ""{
                 
                 let err = UIAlertController(title: "ERROR", message: "Enter course name", preferredStyle: .alert)
                 err.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
                 present(err, animated: true)

             }
             else{
             let forth = UIAlertController(title: "confirm", message: " you are in \(course.text!) forth year", preferredStyle: .alert)
             forth.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))

             forth.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self]action -> Void in performseg()}))
                 present(forth, animated: true)}


             default:
                 break
         }
     }
}
