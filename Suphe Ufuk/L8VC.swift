//
//  Level8ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 1.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L8VC: UIViewController ,UIScrollViewDelegate{
   
    let userArray = ["next","Next","NEXT"]
    let passArray = ["level","Level","LEVEL"]
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!


    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    
    
 override func viewDidLoad() {
        super.viewDidLoad()
        
    
    
    
    applyMotionEffect(toView: imageView, magnitude: 20)
    applyMotionEffect(toView: userTextField, magnitude: 20)
    applyMotionEffect(toView: passTextField, magnitude: 20)
//    applyMotionEffect(toView: baslik, magnitude: 20)
    applyMotionEffect(toView: but1, magnitude: 20)
    applyMotionEffect(toView: idv, magnitude: 10)
   
    
    
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 30.0
    
        userTextField.returnKeyType = UIReturnKeyType.default
        passTextField.returnKeyType = UIReturnKeyType.default
    
    
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    
    @IBAction func girisPressed(_ sender: Any) {
        
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to9", sender: self)
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
