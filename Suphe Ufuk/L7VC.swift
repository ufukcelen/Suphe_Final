//
//  L7VC.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 16.08.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class L7VC: UIViewController {


  
    let userArray = ["hadouken","Hadouke","HADOUKEN"]
    
//    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var but1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        
      
        passTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
//        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        
    
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {        self.view.endEditing(true)
    }
    
    
    
    @IBAction func girisTik(_ sender: Any) {
        if userArray.contains(passTextField.text!) {
            performSegue(withIdentifier: "to4", sender: nil)
            playSuccess()
        }else{
            passTextField.text = ""
            playError()
        }
    }
    
    
    
   
}
