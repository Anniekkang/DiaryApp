//
//  BaseViewController.swift
//  DiaryApp
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setconfigure()
        setConstraints()
        view.backgroundColor = .white
        
    }
    
    func setconfigure(){}
    func setConstraints(){}
    
   
}
