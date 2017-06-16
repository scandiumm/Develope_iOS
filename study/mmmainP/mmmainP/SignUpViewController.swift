//
//  SignUoViewController.swift
//  mmmainP
//
//  Created by jaeseong on 2017. 5. 31..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {

    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                        @IBOutlet                                                                                                         //
    /************************************************************************************************************************************************************************************************************/
    @IBOutlet weak var scroolView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nickNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                                                                                                                                          //
    /************************************************************************************************************************************************************************************************************/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                                                                                                                                          //
    /************************************************************************************************************************************************************************************************************/
    // MARK: didReceiveMemoryWarning
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                     Cancel                                                                                                               //
    /************************************************************************************************************************************************************************************************************/
  
    @IBAction func cancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                     textField                                                                                                            //
    /************************************************************************************************************************************************************************************************************/
    // MARK: TextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.scroolView.setContentOffset(CGPoint(x: 0.0, y: 150.0), animated: true)
        //self.subTitleLabel.isHidden = true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroolView.setContentOffset(CGPoint(x: 0.0, y: 0.0), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 1...300://텍스트필드의 태그가 100씩 증가하게 설정하였음. 따라서 이 케이스로 firstResponder를 자동으로 넘길수 있음.
            self.view.viewWithTag(textField.tag + 100)?.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    
    /************************************************************************************************************************************************************************************************************/
    //                                                                                      Sign Up                                                                                                             //
    /************************************************************************************************************************************************************************************************************/
    // MARK: SignUp
    
    @IBAction func signUpButtonTouched(_ sender: UIButton) {
        self.signUpRequest()
    }
    
    func signUpRequest(){
        self.view.endEditing(true)
        //딕셔너리 이용해서 구현하기.
        
        if !(emailTextField.text?.isEmpty)! && !(nickNameTextField.text?.isEmpty)! && passwordTextField.text! == passwordConfirmTextField.text!{
            UserDefaults.standard.set(emailTextField.text!, forKey: Authentification.email)
            UserDefaults.standard.set(nickNameTextField.text!, forKey: Authentification.nickName)
            UserDefaults.standard.set(passwordTextField.text!, forKey: Authentification.password)
            UserDefaults.standard.set(true, forKey: Authentification.authentificationBool)
                
            //self.dismiss(animated: true, completion: nil)
            self.performSegue(withIdentifier: "UnwindSegue", sender: self)
            
        }else {
            self.subTitleLabel.text = "제대로 입력"
        }
    }
}
