//
//  L13HintVC.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 7.09.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class L13HintVC: UIViewController {

    @IBOutlet weak var panelView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
