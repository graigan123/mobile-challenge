//
//  BGTNavigationController.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

class BGTNavigationController: UINavigationController {
    
    override func loadView() {
        super.loadView()
//        self.configureBackButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewControllers[0].navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self.navigationController, action: #selector(self.navigationController?.popViewController(animated:)))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
     
    }

//    private func configureBackButton(){
//
//        var backImage = UIImage(named: "arrowUp")
//        backImage = resizeImage(image: backImage!, newWidth: 20)
//        UINavigationBar.appearance().backIndicatorImage = backImage
//        UINavigationBar.appearance().backIndicatorTransitionMaskImage = backImage
//        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffset(horizontal: 10.0, vertical: -9.0), for: .default)
//    }
//
//    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage? {
//
//        let scale = newWidth / image.size.width
//        let newHeight = image.size.height * scale
//        UIGraphicsBeginImageContext(CGSize(width: 40, height: newHeight))
//        image.draw(in: CGRect(x: 15, y: 0, width: newWidth, height: newHeight))
//
//        let newImage = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//
//        return newImage
//    }
    
}
