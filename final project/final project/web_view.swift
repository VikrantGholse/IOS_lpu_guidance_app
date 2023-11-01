//
//  web_view.swift
//  final project
//
//  Created by Vikrant Gholse on 22/10/23.
//

import UIKit
import WebKit
import AVKit
import AVFoundation

class web_view: UIViewController {
    
    let webview = WKWebView()
    
    var player:AVAudioPlayer=AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audiopath = Bundle.main.path(forResource: "verto", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!)as URL)
            player.play()
        }
        catch{
            
        }
        
        view.addSubview(webview)
        
        guard let url = URL(string: "https://www.lpu.in/virtual-tour/")else{return
            
        }
        webview.load(URLRequest(url: url))

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webview.frame=view.bounds
    }
    

}
