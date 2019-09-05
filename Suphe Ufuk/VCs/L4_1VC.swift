//
//  Yeni45ViewController.swift
//  Şüphe
//
//  Created by Ufuk Celen on 13.06.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L4_1VC: UIViewController {

    let userArray = ["lumos","Lumos","LUMOS"]
    let passArray = ["maxima","Maxima","MAXİMA","MAXIMA"]
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var but1: UIButton!
//    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var idv: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userTextField.returnKeyType = UIReturnKeyType.default
        passTextField.returnKeyType = UIReturnKeyType.default
        
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
//        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        
          let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
  
 }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
    
    
    
    @IBAction func girisPressed(_ sender: UIButton) {
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to5", sender: self)
                playSuccess()
                
            }else{
                userTextField.text = ""
                passTextField.text = ""
                playError()
            }
        }else{
            userTextField.text = ""
            passTextField.text = ""
            playError()
        }
        
        
    }
    

   
}
