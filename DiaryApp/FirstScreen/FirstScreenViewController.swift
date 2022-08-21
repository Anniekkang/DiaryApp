//
//  FirstScreenViewController.swift
//  DiaryApp
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class FirstScreenViewController: BaseViewController {

    
    var mainview = FirstScreenView()
    override func loadView() {
        self.view = mainview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    

}
