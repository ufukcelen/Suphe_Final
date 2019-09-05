//
//  Yeni4ViewController.swift
//  Şüphe
//
//  Created by Ufuk Celen on 13.06.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L4VC: UIViewController {

    let userArray = ["lumos","Lumos","LUMOS"]
    
//    @IBOutlet weak var baslik: UILabel!
  
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        
        
        userTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        
        applyMotionEffect(toView: userTextField, magnitude: 20)
//        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func girisPressed(_ sender: Any) {
        
        
        
        if userArray.contains(userTextField.text!) {
            performSegue(withIdentifier: "to4v2", sender: nil)
            playSuccess()
        }else{
            userTextField.text = ""
            playError()
        }
        
 }
    

}
