//
//  LoginVC.swift
//  LvClub
//
//  Created by Med Beji on 04/12/2016.
//  Copyright © 2016 Med Beji. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginView: UIView!
    

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       observeKeyboardEditing()
        
    }
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func loginPressed(_ sender: AnyObject) {
        
        
        
    }
    
 
    
    // Keyboard View 
    fileprivate func observeKeyboardEditing() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: .UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: .UIKeyboardDidHide, object: nil)
        
    }
    
    func keyboardShow() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            
            self.loginView.frame = CGRect(x: self.loginView.frame.origin.x , y: self.loginView.frame.origin.y-100, width: self.loginView.frame.width, height:  self.loginView.frame.height)
            
            self.loginButton.frame = CGRect(x: self.loginButton.frame.origin.x, y: self.loginButton.frame.origin.y - 100, width: self.loginButton.frame.width, height: self.loginButton.frame.height)
            
            }, completion: nil)
    }
    
    func keyboardHide() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.loginView.frame = CGRect(x: self.loginView.frame.origin.x , y: self.loginView.frame.origin.y, width: self.loginView.frame.width, height:  self.loginView.frame.height)
            
            self.loginButton.frame = CGRect(x: self.loginButton.frame.origin.x, y: self.loginButton.frame.origin.y , width: self.loginButton.frame.width, height: self.loginButton.frame.height)
            
            }, completion: nil)
    }

    
    

}
