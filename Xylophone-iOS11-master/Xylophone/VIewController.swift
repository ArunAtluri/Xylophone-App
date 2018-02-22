//
//  ViewController.swift
//  Xylophone
//
//  Created by Arun Atluri on 20/02/18.
//  Copyright © 2018 Arun Atluri. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        //print(selectedSoundFileName)
        playSound()
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        //instead of writing do catch block you have a single statement
        
        //try! audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        
        //'!' whenever you have an exclamation mark in swift it means
        //(it's telling to xcode that)I know what I am doing you better don't involve in this code
        
        do {
            try audioPlayer =  AVAudioPlayer(contentsOf: soundURL!)
            // audioPlayer = try AVAudioPLayer(contentsOf: soundURL!)
        }
            
        catch {
            print("couldn't load audio player :/")
        }
        audioPlayer.play()
    }

}

