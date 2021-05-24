//
//  FirstScreenView.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit
import SnapKit

class FirstScreenView: BaseView {
    
    private lazy var spaceView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(firstCoinButton)
        stackView.addArrangedSubview(secondCoinButton)
        stackView.isBaselineRelativeArrangement = true
        stackView.spacing = 8
        return stackView
    }()
    
    private lazy var textFieldStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(firstCoinValueTextField)
        stackView.addArrangedSubview(SecondCoinValueTextField)
        stackView.isBaselineRelativeArrangement = true
        stackView.spacing = 8
        return stackView
    }()
    
    let firstCoinButton: UIButton = {
        let button = UIButton()
        if AppDelegate.isIphoneSE {
              button.titleLabel?.font = .boldSystemFont(ofSize: 12)
          } else {
              button.titleLabel?.font = .boldSystemFont(ofSize: 14)
          }
        button.backgroundColor = .white
        button.setTitle("Choose 1st currency", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 4.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    private lazy var secondCoinButton: UIButton = {
        let button = UIButton()
        if AppDelegate.isIphoneSE {
            button.titleLabel?.font = .boldSystemFont(ofSize: 12)
        } else {
            button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        }
        button.backgroundColor = .white
        button.setTitle("Choose 2nd currency", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 4.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    private lazy var firstCoinValueTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Into With 1st Value"
        textField.textColor = .black
        if AppDelegate.isIphoneSE {
            textField.font = .systemFont(ofSize: 12)
        } else {
            textField.font = .systemFont(ofSize: 14)
        }
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 4.0
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 0.5
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        return textField
    }()
    
    private lazy var SecondCoinValueTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Into With 2nd Value"
        textField.textColor = .black
        if AppDelegate.isIphoneSE {
            textField.font = .systemFont(ofSize: 12)
        } else {
            textField.font = .systemFont(ofSize: 14)
        }
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 4.0
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 0.5
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        return textField
    }()
    
    private lazy var getResultButton: UIButton = {
        let button = UIButton()
        if AppDelegate.isIphoneSE {
              button.titleLabel?.font = .boldSystemFont(ofSize: 12)
          } else {
              button.titleLabel?.font = .boldSystemFont(ofSize: 14)
          }
        button.backgroundColor = .white
        button.setTitle("Get your result", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 4.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Conversion Result"
        label.textColor = .black
        label.numberOfLines = 0
        if AppDelegate.isIphoneSE {
            label.font = .systemFont(ofSize: 18)
        } else {
            label.font = .systemFont(ofSize: 20)
        }
        label.layer.masksToBounds = true
        label.layer.borderWidth = 0.5
        label.layer.borderColor = UIColor.black.cgColor
        label.textAlignment = .center
        return label
    }()
    
    override func initialize() {
        addSubview(spaceView)
        spaceView.addSubview(buttonsStackView)
        spaceView.addSubview(textFieldStackView)
        spaceView.addSubview(getResultButton)
        spaceView.addSubview(resultLabel)
    }
    
    override func installConstraints() {
        
        spaceView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        buttonsStackView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(60)
            $0.leading.equalToSuperview().inset(20)
            $0.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(50)
        }
        
        textFieldStackView.snp.makeConstraints {
            $0.top.equalTo(buttonsStackView.snp.bottom).offset(30)
            $0.leading.equalToSuperview().inset(20)
            $0.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(50)
        }
        
        getResultButton.snp.makeConstraints {
            $0.top.equalTo(textFieldStackView.snp.bottom).offset(30)
            $0.leading.equalToSuperview().inset(20)
            $0.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(50)
        }
        
        resultLabel.snp.makeConstraints {
            $0.top.equalTo(getResultButton.snp.bottom).offset(30)
            $0.leading.equalToSuperview().inset(20)
            $0.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(50)
        }
        
    }
    
}
