//
//  FirstScreenView.swift
//  DiaryApp
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit
import SnapKit


class FirstScreenView: BaseView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        searchImageView.addSubview(searchButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    let firstTextField : FirstScreenTextField = {
        let view = FirstScreenTextField()
        view.placeholder = "이미지 검색하기 "
        return view
    }()
    
    
    let secontTextField : FirstScreenTextField = {
        let view = FirstScreenTextField()
        view.placeholder = "이미지 검색하기 "
        return view
    }()
    
    
    let searchImageView : UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    let searchTextView : UITextView = {
        let view = UITextView()
        view.backgroundColor = .gray
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    let searchButton : UIButton = {
        let view = UIButton()
        view.backgroundColor = .systemMint
        view.setTitle("검색", for: .normal)
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 30
        
        return view
    }()
    
    
    override func setConfigure() {
        [searchTextView,searchImageView,firstTextField,secontTextField,searchButton].forEach {
            self.addSubview($0)
        }
        
    }
    
    
    
    override func setConstraints() {
        searchImageView.snp.makeConstraints { make in
            make.topMargin.equalTo(50)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
            
        }
        firstTextField.snp.makeConstraints { make in
            make.topMargin.equalTo(searchImageView.snp.bottom).offset(30)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.08)
            
        }
        secontTextField.snp.makeConstraints { make in
            make.topMargin.equalTo(firstTextField.snp.bottom).offset(30)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.08)
            
        }
        searchTextView.snp.makeConstraints { make in
            make.topMargin.equalTo(secontTextField.snp.bottom).offset(30)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
            
        }
        searchButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(searchImageView.snp.trailing).offset(-20)
            make.bottomMargin.equalTo(searchImageView.snp.bottom).offset(-20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        
    }
}
