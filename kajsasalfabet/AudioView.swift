//
//  AudioView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-11.
//



import Foundation
import AVFoundation
import SwiftUI


var audioPlayer : AVAudioPlayer?


func playSound(sound :String , type : String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = 1
            audioPlayer?.play()
            print("Sound Played")
        } catch {
            
            print("Not able to play ")
        }
        
    }
    
}

func stopSound(sound :String , type : String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.stop()
            print("Sound Stoped")
        } catch {
            
            print("Not able to Stop ")
        }
        
        
    }
        
    
}
