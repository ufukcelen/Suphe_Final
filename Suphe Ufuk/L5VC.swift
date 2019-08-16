
//
//  LLLL4ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 31.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L5VC: UIViewController {

    let userArray = ["hearts","Hearts","HEARTS"]
    

    
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var imageV: UIImageView!
//    @IBOutlet weak var baslik: UILabel!
    
 override func viewDidLoad() {
        super.viewDidLoad()
        
    
    

    
    
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .light //.default//.dark//.alert
        
        
        userTextField.returnKeyType = UIReturnKeyType.default
        
    applyMotionEffect(toView: imageV, magnitude: 20)
    applyMotionEffect(toView: userTextField, magnitude: 20)
   
//    applyMotionEffect(toView: baslik, magnitude: 20)
    applyMotionEffect(toView: but1, magnitude: 20)
    applyMotionEffect(toView: idv, magnitude: 10)
        
       
    }
    
 
    
    
    
    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(userTextField.text!) {
            performSegue(withIdentifier: "to6", sender: self)
            playSuccess()
        }else{
            userTextField.text = ""
            playError()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }

  



}
    
    
    
    
    
    
    

