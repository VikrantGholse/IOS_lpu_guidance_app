//
//  VideoPlayer.swift
//  final project
//
//  Created by Vikrant Gholse on 22/10/23.
//

import UIKit
import AVKit
import AVFoundation

class VideoPlayer: UIViewController {
    

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
    

    @IBAction func video_play(_ sender: Any) {
        
        guard let path = Bundle.main.path(forResource: "lpu_intro", ofType:"mp4")
        else {
                    debugPrint("lpu_intro.mp4 not found")
                    return
                }
                let player = AVPlayer(url: URL(fileURLWithPath: path))
                let playerController = AVPlayerViewController()
                playerController.player = player
                present(playerController, animated: true) {
                    player.play()
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
}
