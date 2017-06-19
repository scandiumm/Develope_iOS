//
//  ViewController.swift
//  Bundle
//
//  Created by 이재성 on 2017. 6. 19..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path:[String] = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        let basePath = path[0] + "/friendList.plist"
        
        
        let fileManager = FileManager.default
        //있는지 확인
        if !FileManager.default.fileExists(atPath: basePath) {
            if let bundlePath = Bundle.main.path(forResource: "FriendList", ofType: "plist") {
                do  {
                    try FileManager.default.copyItem(atPath: bundlePath , toPath: basePath)
                }catch {
                    return
                }
            }else {
                return
            }
        }
        
        //받아오기
        let dic = NSDictionary(contentsOfFile: basePath) as? [String : AnyObject]
        
        let nsDic = NSDictionary(dictionary: dic!)
        nsDic.write(toFile: basePath, atomically: true)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

