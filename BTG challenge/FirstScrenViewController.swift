//
//  FirstScrenViewController.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    lazy var firstView: FirstScreenView = {
        let view = FirstScreenView()
        view.firstCoinButton.addTarget(self, action: #selector(handlerFirstCoin(_:)), for: .touchUpInside)
        return view
    }()
    
    var navigator: MainNavigator?
    
//    init(navigator: MainNavigator? = nil) {
//
//        if navigator == nil {
//            navigator = MainNavigator(navigationController: <#T##UINavigationController#>)
//        }
//
//        self.navigator = navigator
//        if let navigation = navigator {
//
//        }
//
//        super.init(nibName: nil, bundle: Bundle.main)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func loadView() {
        super.loadView()
        self.view = self.firstView
        
//        self.navigator = MainNavigator(navigationController: self.navigationController!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        
        self.navigator = MainNavigator(navigationController: AppDelegate.navigationController!)
    }
    
    @objc func handlerFirstCoin(_ sender: UIButton) {
        navigator?.navigateModalInfo(ro: .popUp)
    }
    
//    @objc func handlerStart(_ sender: UIButton) {
//        navigator?.navigate(to: .register)
//    }
    
}
