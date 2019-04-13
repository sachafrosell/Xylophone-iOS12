//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer?
    var soundFile: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        soundFile = "note\(sender.tag)";
        playSound();
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!);
        }
        catch {
            print(error);
        }
        
        player?.play();
    }
    
  

}

