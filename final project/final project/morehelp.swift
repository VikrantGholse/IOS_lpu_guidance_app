//
//  morehelp.swift
//  final project
//
//  Created by Vikrant Gholse on 31/10/23.
//

import UIKit
import WebKit

class morehelp: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list :[String] = ["CANTEEN","FOOD COURT","WASHROOM/WATER STATION"]
    var canteen = ["VEG","NON-VEG"]
    var NONVEG : [String] = ["FOOD FACTORY"]
    var VEG : [String] = ["NK","KITCHEN ETTE","OVEN EXPRESS"]
    var foodcourt : [String] = ["FC1(NEAR HOSPITAL)","FC2(NEAR CSE BLOCKS)","FC3(NEAR APPARTMENTS)","FC4(BEHIND BH1)","FC5(NEAR PLAYGROUND)","FC6(NEAR MEC BOLCK)"]
    var Wc : [String] = ["WASHROOMS/WATER COOLER"]
    
    @IBOutlet weak var morehelp: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        morehelp.delegate =  self
        morehelp.dataSource = self
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
        
    }
    
    var gMaps = ""
//
    func performSeg() {

        performSegue(withIdentifier: "moremaps", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let destination = segue.destination as? moremapwebview {

            destination.urlstr = gMaps
        }
    }
////
//    func performSegNK() {
//        performSegue(withIdentifier: "moremaps", sender: self)
//
//        let morehelpWB = moremapwebview()
//
//        morehelpWB.urlstr = "https://maps.app.goo.gl/XRgF9F4at7RmzyBz6"
//
//        present(morehelpWB, animated: true, completion: nil)
//
//    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return canteen.count
        }
        else if section == 1{
            return foodcourt.count
        }
        else{
            return Wc.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "one" ,for:indexPath)
        if(indexPath.section == 0){
            cell.textLabel?.text = canteen[indexPath.row]
        }
        
        else if(indexPath.section == 1){
            cell.textLabel?.text = foodcourt[indexPath.row]
        }
        else {
            cell.textLabel?.text = Wc[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return list[section]
    }
    
    var value:String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.section == 0){
            value = canteen[indexPath.row]
            let selectedrow = canteen[indexPath.row]
            
            switch selectedrow{
            case "VEG" :
                let alert = UIAlertController(title: "confirmation", message: "Do Want to eat \(value!)", preferredStyle: .actionSheet)
                alert.addAction(UIAlertAction(title: "NK", style: .default, handler: {[self]action -> Void in
                    gMaps = "https://maps.app.goo.gl/XRgF9F4at7RmzyBz6"
                    performSeg()}))
                alert.addAction(UIAlertAction(title: "KITCHEN ETTE", style: .default, handler: {[self]action -> Void in
                    gMaps = "https://maps.app.goo.gl/evmNAyvhQgVjfEkb9"
                    performSeg()}))
                alert.addAction(UIAlertAction(title: "OVEN EXPRESS", style: .default, handler: {[self]action -> Void in
                    gMaps = "https://maps.app.goo.gl/FiXP2AK4zB9qJdUZ8"
                    performSeg()}))
                alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
                self.present(alert, animated: false, completion: nil)
            case "NON-VEG":
                let alert = UIAlertController(title: "confirmation", message: "Unfortunately there is only one place inside campus to have non veg", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "GET DIRECTION", style: .default, handler: {[self]action -> Void in
                    gMaps = "https://maps.app.goo.gl/t1ZYJsfZuuNDizXQA"
                    performSeg()}))
                alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
                self.present(alert, animated: false, completion: nil)
            default:
                print("done")
            }
            
        }
        else if(indexPath.section == 1){
            value = foodcourt[indexPath.row]
        }
        else {
            value = Wc[indexPath.row]
            let alert = UIAlertController(title: "washroom", message: "wshrooms and water coolers  in all the bocks are in even floor except block 36 in block 36 wshrooms and water coolers are in odd floors ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
            present(alert, animated: true)
        
        }
        
        
    }

}

