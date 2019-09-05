//
//  Level7ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 1.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L7VC: UIViewController {

    let userArray = ["hadouken","Hadouken","HADOUKEN"]
    
    
    
    
    @IBOutlet weak var textFieldP: UITextField!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: textFieldP, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        
        
        
 let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
       
        

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(textFieldP.text!) {
            performSegue(withIdentifier: "to8", sender: self)
            playSuccess()
        }else{
            textFieldP.text = ""
            playError()
            
        }
    }
    







}




