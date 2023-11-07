//
//  helplist.swift
//  final project
//
//  Created by Vikrant Gholse on 27/10/23.
//

import UIKit
import WebKit

class helplist: UIViewController {
    
    
    @IBOutlet weak var maps: WKWebView!
    func mallmap() {
        if let url = URL(string: "https://maps.app.goo.gl/AFj5NT2N6zgDS5jq8") {
                let request = URLRequest(url: url)
                maps.load(request)    }
    }
    
    func dswmap() {
        if let url = URL(string: "https://maps.app.goo.gl/PbASaY5CQPRxeiTj6") {
                let request = URLRequest(url: url)
                maps.load(request)    }
    }
    func unipolismap() {
        if let url = URL(string: "https://maps.app.goo.gl/YZR7rYkxAPeci7se8") {
                let request = URLRequest(url: url)
                maps.load(request) }
    }
    func sdmamap() {
        if let url = URL(string: "https://maps.app.goo.gl/ik6rhbZLaxneGaPF7") {
                let request = URLRequest(url: url)
                maps.load(request) }
    }
    func hospitalmap() {
        if let url = URL(string: "https://maps.app.goo.gl/dpTuRDhEsvpckq4JA") {
                let request = URLRequest(url: url)
                maps.load(request) }
    }
    func admissionmap() {
        if let url = URL(string: "https://maps.app.goo.gl/6EhFJrGhu1VFSYvT7") {
                let request = URLRequest(url: url)
                maps.load(request) }
    }
    func indoorsportsmap() {
        if let url = URL(string: "https://maps.app.goo.gl/ksqTK6A4U97SzHCr7") {
                let request = URLRequest(url: url)
                maps.load(request) }
    }
    func playgroundmap() {
        if let url = URL(string: "https://maps.app.goo.gl/4t3AJZ93vGQDfAFy7") {
                let request = URLRequest(url: url)
                maps.load(request) }
    }
    
    func more() {
        performSegue(withIdentifier: "more", sender: self)
    }

    

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
    

    @IBAction func helplist(_ sender: Any) {
        
        let alert2 = UIAlertController(title: "WHERE DO YOU WANT TO GO?", message: "Select Location", preferredStyle: .actionSheet)
        
        alert2.addAction(UIAlertAction(title: "Mall", style: .default, handler: { [self]action -> Void in mallmap()}))
        alert2.addAction(UIAlertAction(title: "DSW", style: .default, handler: {[self]action -> Void in dswmap()}))
        alert2.addAction(UIAlertAction(title: "UNI-POLIS", style: .default, handler: {[self]action -> Void in unipolismap()}))
        alert2.addAction(UIAlertAction(title: "SDMA/OPEN AUDITORIUMM", style: .default, handler: {[self]action -> Void in sdmamap()}))
        alert2.addAction(UIAlertAction(title: "UNI-HOSPITAL", style: .default, handler: {[self]action -> Void in hospitalmap()}))
        alert2.addAction(UIAlertAction(title: "ADMISSION BLOCK", style: .default, handler: {[self]action -> Void in admissionmap()}))
        alert2.addAction(UIAlertAction(title: "INDOOR SPORTS COMPLEX", style: .default, handler: {[self]action -> Void in indoorsportsmap()}))
        alert2.addAction(UIAlertAction(title: "PLAY GROUND", style: .default, handler: {[self]action -> Void in playgroundmap()}))
        alert2.addAction(UIAlertAction(title: "MORE...", style: .default, handler: {[self]action -> Void in more()}))

        
        present(alert2, animated: true)
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
