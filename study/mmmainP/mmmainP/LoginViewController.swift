//
//  LoginViewController.swift
//  mmmainP
//
//  Created by jaeseong on 2017. 5. 31..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    /************************************************************************************************************************************************************************************************************/
    //                                                                                     @IBOutlet                                                                                                            //
    /************************************************************************************************************************************************************************************************************/
  
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                                                                                                                                          //
    /************************************************************************************************************************************************************************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        emailTextField.tag = 1 //Tag는 가능한 상수로 주는것이 좋음
        
        passwordTextField.delegate = self
        passwordTextField.tag = 2
        passwordTextField.isSecureTextEntry = true
        
//        self.navigationController?.isNavigationBarHidden = true // 네비게이션바 숨기기(커스텀 네비게이션바 만들때 사용하면 될듯)
        

    }
    
    @IBAction func signUpButtonTouched(_ sender: UIButton) {
        
        //let logIn:SignUpViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        //self.present(logIn, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                      textField                                                                                                                    //
    /************************************************************************************************************************************************************************************************************/
    // MARK: TextField
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        self.scrollView.setContentOffset(CGPoint(x: 0.0, y: 130.0), animated: true)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.scrollView.setContentOffset(CGPoint(x: 0.0, y: 0.0), animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag{
        case 100:
            self.view.viewWithTag(200)?.becomeFirstResponder()
        default:
            self.loginRequest()
            textField.resignFirstResponder()
            
        }
        return true
    }
    
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                         login                                                                                                            //
    /************************************************************************************************************************************************************************************************************/
    // MARK: Login
    @IBAction func loginButtonTouched(_ sender: UIButton) {
        self.loginRequest()
    }
    
    func loginRequest(){
        if !(self.emailTextField.text?.isEmpty)! && !(self.passwordTextField.text?.isEmpty)! {
            if self.emailTextField.text! == UserDefaults.standard.string(forKey: Authentification.email) && self.passwordTextField.text! == UserDefaults.standard.string(forKey: Authentification.password){
                //로그인된경우
                print("로그인성공")
                UserDefaults.standard.set(true, forKey: Authentification.authentificationBool)
                self.dismiss(animated: true, completion: nil)
            }else {
                //로그인 실패한 경우
                //print("실패")
                let alert:UIAlertController = UIAlertController(title: "이것이 알럿",
                                                                message: "로그인실패",
                                                                preferredStyle: .alert) //actionSheet(밑에서 내려옴) // alert(중간에서 뜸)
                let okAction:UIAlertAction = UIAlertAction(title: "알았슈", style: UIAlertActionStyle.default, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
