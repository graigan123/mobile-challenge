//
//  BTGPopUpView.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit
import SnapKit

class BTGPopUpView: BaseView {
    
    private lazy var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.alpha = 0.2
        return view
    }()
    
    private lazy var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    var closeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "alertClose"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func initialize() {
        addSubview(blackView)
        blackView.addSubview(whiteView)
        whiteView.addSubview(closeButton)
        whiteView.addSubview(tableView)
    }
    
    override func installConstraints() {
        blackView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        whiteView.snp.makeConstraints {
            $0.height.equalTo(500)
            $0.leading.equalToSuperview().inset(12)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        closeButton.snp.makeConstraints {
             $0.top.equalToSuperview().inset(20)
             $0.trailing.equalToSuperview().inset(20)
             $0.height.equalTo(30)
             $0.width.equalTo(30)
        }
        tableView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(22)
            $0.leading.equalToSuperview().inset(8)
            $0.trailing.equalToSuperview().inset(8)
            $0.bottom.equalToSuperview().inset(20)
        }
    }
}
