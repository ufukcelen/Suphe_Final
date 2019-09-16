//
//  L11VC.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 7.09.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class L11VC: UIViewController {

    let userArray = ["fare","Fare","FARE"]
    
    @IBOutlet weak var userTextField: UITextField!
  //  @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var but1: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.dark//.alert
        
        
        userTextField.returnKeyType = UIReturnKeyType.default
        
        
        //   applyMotionEffect(toView: myImage, magnitude: 2)
        //   applyMotionEffect(toView: userTextField, magnitude: 2)
        applyMotionEffect(toView: userTextField, magnitude: 20)
    
        applyMotionEffect(toView: imageV, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: but1, magnitude: 20)
        
        

        
}

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func girisTik(_ sender: Any) {
        if userArray.contains(userTextField.text!) {
            performSegue(withIdentifier: "to12", sender: nil)
            playSuccess()
        }else{
            userTextField.text = ""
            playError()
        }
    }
}

