//
//  ViewController.swift
//  PlayAudioFile
//
//  Created by Sanjay Noronha on 2015/10/27.
//  Copyright © 2015 funza Academy. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var myAudioPlayer = AVAudioPlayer()
    
    
    @IBOutlet var myVolumeController: UISlider!
    
    @IBAction func pauseAudio(sender: AnyObject) {
        
        myAudioPlayer.pause()
    }
    
    @IBAction func playAudio(sender: AnyObject) {
        
        myAudioPlayer.play()
    }
    
    @IBAction func stopAudio(sender: AnyObject) {
         myAudioPlayer.stop()
         myAudioPlayer.currentTime = 0
    }
    
    
    @IBAction func controlVolume(sender: AnyObject) {
        
         myAudioPlayer.volume = myVolumeController.value
        
    }
    
    
    override func viewDidLoad() {
        
        // get the path of our file
        let myFilePathString = NSBundle.mainBundle().pathForResource("Spring_In_My_Step", ofType: "mp3")
        
        if let myFilePathString = myFilePathString
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString)
            
            
            do{
                
                try myAudioPlayer = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
                //myAudioPlayer.play()
                
            }catch
            {
                print("error")
            }
            
        }
        
        // p oint the avaudio player to that path
        
        super.viewDidLoad()
        
    }
    
    
    
}