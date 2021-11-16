//
//  AudioView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-11.
//



import Foundation
import AVFoundation
import SwiftUI


class AudioPlayer: UIViewController,AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer?
    var onFinished: (() -> ())? = nil

    func playSound(sound1: String, sound2: String, type : String) {
        self.playSound(sound: sound1, type: type){
            
            self.playSound(sound: sound2, type: type)
            print("playing sound 2")
        }
    }
    
    func playSound(sound :String, type : String, onFinished: (() -> ())? = nil) {
        if let path = Bundle.main.path(forResource: sound, ofType: type){
            do {
                self.onFinished = onFinished 
                audioPlayer = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.delegate = self
                audioPlayer?.numberOfLoops = 0
                audioPlayer?.play()
                print("Sound Played")
            } catch {
                print("Not able to play ")
            }
            
        }
        
    }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("audioPlayerDidFinishPlaying")
        if (self.onFinished != nil) {
            self.onFinished!()
            self.onFinished = nil
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

}
