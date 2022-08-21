//
//  FirstScreenTextField.swift
//  DiaryApp
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class FirstScreenTextField : UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        layer.cornerRadius = 5
        layer.backgroundColor = UIColor.gray.cgColor
        textAlignment = .center
        
        
        
    }
    
    
}
