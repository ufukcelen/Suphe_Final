//
//  L1HintVCViewController.swift
//  Şüphe
//
//  Created by Ufuk Celen on 23.06.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L1HintVC: UIViewController {
 
    @IBOutlet weak var panelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    applyMotionEffect(toView: panelView, magnitude: 30)
    
    }
    

    @IBAction func tamamPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
   

}
