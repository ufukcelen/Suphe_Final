//
//  L2VCViewController.swift
//  Şüphe
//
//  Created by Ufuk Celen on 23.06.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L2VC: UIViewController {


    let userArray = ["Pirinç","Pirinc","PİRİNÇ","PIRINC","pirinç","pirinc"]
    let passArray = ["fabrikası","fabrikasi","Fabrikası","Fabrikasi","FABRIKASI","FABRIKASİ"]

//    @IBOutlet weak var baslik: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var but1: UIButton!
    
    @IBOutlet weak var idv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        
        
        passTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
//        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        

    }
 

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func enterPressed(_ sender: UIButton) {
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to3", sender: self)
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
