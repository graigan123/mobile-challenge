//
//  MainNavigator.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

class MainNavigator: Navigator {

    enum Destination {
        case first, popUp
    }
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigate(to destination: MainNavigator.Destination) {
        let viewController = makeViewController(for: destination)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func showAlert(alert: MainNavigator.Destination){
        let viewController = makeViewController(for: alert)
        navigationController?.present(viewController, animated: true)
    }
    
    func navigateModalInfo(ro destination: MainNavigator.Destination) {
        let vc = makeViewController(for: destination) as! BTGPopUpViewController
        
        
        navigationController?.topViewController?.present(vc, animated: true, completion: nil)
    }
    
    func dismissModal() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
        
    func start(destination: MainNavigator.Destination) {
        
        let viewController = makeViewController(for: destination)
        navigationController?.viewControllers = [viewController]//setViewControllers([viewController], animated: true)
        navigationController?.popToRootViewController(animated: false)
    }
    
    private func makeViewController(for destination: Destination) -> UIViewController{
     
        switch destination {
        case .first:
//            let firstViewController = FirstScreenViewController(navigator: MainNavigator(navigationController: navigationController!))
//            return firstViewController
            return UIViewController()
        case .popUp:
            let popUpViewController = BTGPopUpViewController(navigator: MainNavigator(navigationController: navigationController!))
            return popUpViewController
        }
    }
}
