//
//  ViewController.swift
//  video_player
//
//  Created by Kameer Hosein on 12/15/24.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        playVideo()
    }
        private func playVideo() {
            guard let path = Bundle.main.path(forResource: "American Truck Simulator - Western Star® 57X - SCS Software (1080p, h264, youtube)", ofType: "mp4") else{
                debugPrint("Could not find video")
                return
            }
            
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController=AVPlayerViewController()
            playerController.player=player
            present(playerController, animated: true){
                player.play()
            }
        }
    }


