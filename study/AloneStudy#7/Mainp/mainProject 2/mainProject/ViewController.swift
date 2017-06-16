//
//  ViewController.swift
//  mainProject
//
//  Created by jaeseong on 2017. 5. 26..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    /***************************************************************************************************************************************/
    //                                                       IBO                                                                           //
    /***************************************************************************************************************************************/
   
    @IBOutlet weak var inputIdField: UITextField!
    @IBOutlet weak var inputPwField: UITextField!

    let limitLength = 20
    
    /***************************************************************************************************************************************/
    //                                                       viewDidLoad                                                                   //
    /***************************************************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    /***************************************************************************************************************************************/
    //                                                       ID/PW 입력                                                                    //
    /***************************************************************************************************************************************/
     
        inputIdField.placeholder = "아이디(ID)"
        inputIdField.delegate = self
        inputIdField.tag = 1
        
        inputPwField.placeholder = "비밀번호(Password)"
        inputPwField.delegate = self
        //inputPwField.tag = 2
        inputPwField.isSecureTextEntry = true //pw hide code
    }
    
    /***************************************************************************************************************************************/
    //                                                       키보드 입력함수                                                               //
    /***************************************************************************************************************************************/
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 1:
            inputPwField.becomeFirstResponder()
       // case 2:
       //     textField.resignFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    
    /***************************************************************************************************************************************/
    //                                                          텍스트 필드 입력 제한 함수                                                 //
    /***************************************************************************************************************************************/
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else {
            return true
        }
        let newLength = text.characters.count + string.characters.count - range.length
        
        return newLength <= limitLength
    }
    
    /***************************************************************************************************************************************/
    //                                                       didReceiveMemory                                                              //
    /***************************************************************************************************************************************/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

