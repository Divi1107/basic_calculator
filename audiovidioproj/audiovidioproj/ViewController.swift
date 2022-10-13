//
//  ViewController.swift
//  audiovidioproj
//
//  Created by APPLE on 13/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()//built-in method
    

    @IBAction func playBtn(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func replayBtn(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    @IBAction func pauseBtn(_ sender: UIButton) {
        player.pause()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do
        {
            let audiopath = Bundle.main.path(forResource: "upbeat-acoustic-113986" , ofType:"mp3")
            try player = AVAudioPlayer(contentsOf:NSURL(fileURLWithPath: audiopath!)as URL)
        }
        catch
        {
        }
    }


}

