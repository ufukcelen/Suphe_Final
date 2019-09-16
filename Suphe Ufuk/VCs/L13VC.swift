//
//  L13VC.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 7.09.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class L13VC: UIViewController {

    let userArray = ["matrix","Matrix","MATRIX","MATRİX"]
    let passArray = ["reloaded","Reloaded","RELOADED"]
   
    
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var but2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.returnKeyType = UIReturnKeyType.default
        passTextField.returnKeyType = UIReturnKeyType.default
        
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: but2, magnitude: 30)
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        }
  
    
    @IBAction func girisPressed(_ sender: Any) {
        
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to14", sender: self)
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
