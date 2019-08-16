//
//  ViewController.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 14.08.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var aciklama: UILabel!
    @IBOutlet weak var idv: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playHaunt()
        
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: aciklama, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        
    }
    
    @IBAction func but1Pressed(_ sender: Any) {
        performSegue(withIdentifier: "to1", sender: nil)
    }
    
}

