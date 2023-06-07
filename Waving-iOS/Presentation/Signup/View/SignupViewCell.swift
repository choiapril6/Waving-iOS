//
//  SignupViewCell.swift
//  Waving-iOS
//
//  Created by Jane Choi on 2023/06/07.
//

import UIKit

final class SignupViewCell: UITableViewCell {
    
    private var userInputView: WVSignupInputView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }

    private func setupView() {
        selectionStyle = .none
        
        let inputView = WVSignupInputView()
        inputView.backgroundColor = .green
        userInputView = inputView
        
        self.addSubview(inputView)
        
        inputView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(100)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
}
