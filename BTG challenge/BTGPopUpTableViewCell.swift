//
//  BTGPopUpTableViewCell.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

class BTGPopUpTableViewCell: UITableViewCell {
    
    static let reusebleIdentifier = "BTGPopUpTableViewCell"
    
    let spaceView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    let typeLabel: UILabel = {
        let label = UILabel()
        if AppDelegate.isIphoneSE {
            label.font = .systemFont(ofSize: 18)
        } else {
            label.font = .systemFont(ofSize: 20)
        }
        
        label.text = "Poke Name"
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(spaceView)
        spaceView.addSubview(typeLabel)
        
        spaceView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        typeLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(20)
            $0.height.equalTo(40)
            $0.width.equalTo(40)
        }

    }
    
//    func bind(modal: PokeListModel) {
//        self.typeLabel.text = modal.name
//        guard let url = URL(string: modal.thumbnailImage ?? "") else { return }
//        self.downloadImage(from: url)
//
//    }
    
}
