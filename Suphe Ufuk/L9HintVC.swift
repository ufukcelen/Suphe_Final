//
//  L9HintVC.swift
//  Şüphe
//
//  Created by Ufuk Celen on 24.06.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L9HintVC: UIViewController {
    
    @IBOutlet weak var panelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
     //   applyMotionEffect(toView: panelView, magnitude: 30)
        
    }
    

    @IBAction func enterPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
}
