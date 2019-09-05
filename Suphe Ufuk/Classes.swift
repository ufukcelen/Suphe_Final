//
//  Classes.swift
//  supheUITests
//
//  Created by Ufuk Celen on 8.08.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


func applyMotionEffect (toView view: UIView,magnitude:Float){
    // Paralax Effecti ekleme Fonksiyonu
    let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
    xMotion.minimumRelativeValue = -magnitude
    xMotion.maximumRelativeValue = magnitude
    
    let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
    yMotion.minimumRelativeValue = -magnitude
    yMotion.maximumRelativeValue = magnitude
    
    let group = UIMotionEffectGroup()
    group.motionEffects = [xMotion,yMotion]
    
    view.addMotionEffect(group)
    
}

var player: AVAudioPlayer?


func playSuccess() {
    guard let url = Bundle.main.url(forResource: "success", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playError() {
    guard let url = Bundle.main.url(forResource: "error", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playHaunted() {
    guard let url = Bundle.main.url(forResource: "haunted", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func stopHaunt() {
    guard let url = Bundle.main.url(forResource: "haunt", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.stop()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playL17() {
    guard let url = Bundle.main.url(forResource: "L17", withExtension: "mp3") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playRuzgar() {
    guard let url = Bundle.main.url(forResource: "ruzgar", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playHaunt() {
    guard let url = Bundle.main.url(forResource: "haunt", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func deneme() {
    guard let url = Bundle.main.url(forResource: "success", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.stop()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playDeep() {
    guard let url = Bundle.main.url(forResource: "Deep", withExtension: "m4a") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
    
}


//TextField Classes

@IBDesignable
class darkText: UITextField {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderColor = UIColor(white : 1 / 255, alpha: 1).cgColor
        self.layer.borderWidth = 1
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 7)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
}

@IBDesignable
class whiteText: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderColor = UIColor(white : 231 / 255, alpha: 1).cgColor
        self.layer.borderWidth = 1
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 7)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}


