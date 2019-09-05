//
//  Level6ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 1.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L9VC: UIViewController {

   
    
    let userArray = ["cassandra","kassandra","Cassandra","Kassandra", "CASSANDRA","KASSANDRA"]
    
    
    @IBOutlet weak var textFieldP: UITextField!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var hintImg: UIButton!
    @IBOutlet weak var but1Img: UIButton!
    @IBOutlet weak var idImg: UIImageView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
   
            let textFieldAppearance = UITextField.appearance()
            textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
            
            
            textFieldP.returnKeyType = UIReturnKeyType.default
        
            applyMotionEffect(toView: myImage, magnitude: 20)
            applyMotionEffect(toView: textFieldP, magnitude: 20)
            applyMotionEffect(toView: but1Img, magnitude: 20)
            applyMotionEffect(toView: idImg, magnitude: 10)
            applyMotionEffect(toView: hintImg, magnitude: 20)
            

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(textFieldP.text!) {
            performSegue(withIdentifier: "to10", sender: self)
            playSuccess()
        }else{
            textFieldP.text = ""
            playError()
        }
    }
}
