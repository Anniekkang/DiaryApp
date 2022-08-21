//
//  BaseView.swift
//  DiaryApp
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfigure()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConfigure(){}
    func setConstraints(){}
    
    
}
