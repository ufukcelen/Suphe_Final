//
//  L12VC.swift
//  Suphe Ufuk
//
//  Created by Ufuk Celen on 7.09.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import UIKit

class L12VC: UIViewController {
   
    
    let userArray = ["heisenberg","Heisenberg" ,"HEISENBERG","HEİSENBERG"]
    
    
    @IBOutlet weak var passTextField: UITextField!
  //  @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var but1: UIButton!
    
override func viewDidLoad() {
    super.viewDidLoad()
    
    
    let textFieldAppearance = UITextField.appearance()
    textFieldAppearance.keyboardAppearance = .dark
    //.default//.dark//.alert
    
    
  passTextField.returnKeyType = UIReturnKeyType.default
    
    
    //   applyMotionEffect(toView: myImage, magnitude: 2)
    //   applyMotionEffect(toView: userTextField, magnitude: 2)
    applyMotionEffect(toView: passTextField, magnitude: 20)
    //applyMotionEffect(toView: baslik, magnitude: 20)
    applyMotionEffect(toView: imageV, magnitude: 20)
    applyMotionEffect(toView: idv, magnitude: 10)
      applyMotionEffect(toView: but1, magnitude: 20)
    
    
   // applyMotionEffect(toView: backImg, magnitude: -40)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  
    @IBAction func girisTik(_ sender: Any) {
        if userArray.contains(passTextField.text!) {
            performSegue(withIdentifier: "to13", sender: self)
            playSuccess()
        }else{
            passTextField.text = ""
            playError()
        }
    }
    
    
   
    
    
    
    
    
    
}
    
