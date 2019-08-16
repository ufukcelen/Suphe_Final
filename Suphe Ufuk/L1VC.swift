//
//  ViewController.swift
//  Şüphe
//
//  Created by Ufuk Celen on 23.06.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L1VC: UIViewController {

    let userArray = ["Lewis","lewis","LEWIS","LEWİS"]
    let passArray = ["Carroll","carroll","CARROLL"]
    let userArray2 = ["Alice","alice","ALICE","ALİCE"]
    let passArray2 = ["Liddell","liddell","LIDDELL"]
    

//    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        stopHaunt()
        
        userTextField.returnKeyType = UIReturnKeyType.default
        passTextField.returnKeyType = UIReturnKeyType.default
        
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
//        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: but2, magnitude: 20)
    
 
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func girisPressed(_ sender: UIButton) {
        
        
        if userArray.contains(userTextField.text!) && passArray.contains(passTextField.text!){
            
           performSegue(withIdentifier: "to2", sender: nil)
        playSuccess()
        }else if userArray2.contains(userTextField.text!) && passArray2.contains(passTextField.text!){
            performSegue(withIdentifier: "to1.2", sender: nil)
            playSuccess()
   }else {
            passTextField.text = ""
            userTextField.text = ""
            playError()
        }
        
       
    
    }
        
       
}
    

    



