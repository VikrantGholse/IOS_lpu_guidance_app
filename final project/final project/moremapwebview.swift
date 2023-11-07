//
//  moremapwebview.swift
//  final project
//
//  Created by Vikrant Gholse on 01/11/23.
//

import UIKit
import WebKit


class moremapwebview: UIViewController {
    var urlstr :String = ""
    
    
    @IBOutlet weak var moreweview: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        debugPrint(urlstr)
        
        let url = URL(string: urlstr)
                let request = URLRequest(url: url!)
                moreweview.load(request)

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
