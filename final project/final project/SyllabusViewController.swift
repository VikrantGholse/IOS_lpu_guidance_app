//
//  SyllabusViewController.swift
//  final project
//
//  Created by Vikrant Gholse on 07/11/23.
//

import UIKit
import WebKit

class SyllabusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://drive.google.com/drive/folders/14dDoePd2A8y6FaRM77lf3HgVzSG7MRth?usp=sharing")
        let request = URLRequest(url: url!)
        syllabus.load(request)

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var syllabus: WKWebView!
    
    

}
