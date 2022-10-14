//
//  thirdviewcontroller.swift
//  finalApp_divya
//
//  Created by APPLE on 14/10/22.
//


import UIKit
import AVFoundation

class thirdviewcontroller: UIViewController {
    var player = AVAudioPlayer()
    
    @IBAction func playBtn(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func pauseBtn(_ sender: UIButton) {
        player.pause()
    }
    
    @IBAction func replayBtn(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audiopath = Bundle.main.path(forResource: "playing-in-color-120336" , ofType: "mp3")
            try player = AVAudioPlayer(contentsOf:NSURL(fileURLWithPath: audiopath!) as URL)
        }
        catch
        {
        }
    }


}

