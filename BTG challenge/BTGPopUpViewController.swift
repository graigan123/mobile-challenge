//
//  BTGPopUpViewController.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

class BTGPopUpViewController: UIViewController {
    
    lazy var btgPopUpView: BTGPopUpView = {
        let popUpView = BTGPopUpView()
        
        popUpView.closeButton.addTarget(self, action: #selector(handlerClose(_:)), for: .touchUpInside)
        
        return popUpView
    }()
    
    var navigator: MainNavigator?
    
    //var model: PokeListModel?
    
    init(navigator: MainNavigator? = nil) {
        self.navigator = navigator
        super.init(nibName: nil, bundle: Bundle.main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view = btgPopUpView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc func handlerClose(_ sender: UIButton) {
        self.navigator?.dismissModal()
    }
    
}
