//
//  ViewController.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 17.08.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var levelImg: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var aciklama: UILabel!
    @IBOutlet weak var idv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playHaunted()
        
        applyMotionEffect(toView: levelImg, magnitude: 20)
        applyMotionEffect(toView: startButton, magnitude: 20)
        applyMotionEffect(toView: aciklama, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
    }
    
    @IBAction func startPressed(_ sender: Any) {
        performSegue(withIdentifier: "to1", sender: nil)
    }
}








