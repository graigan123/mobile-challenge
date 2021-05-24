//
//  BaseView.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    required public init() {
        super.init(frame: CGRect.zero)
        self.setup()
    }
    
    /// Default implementation does nothing
    open func initialize() { fatalError("Must be overridden") }
    
    /// Default implementation does nothing
    open func installConstraints() { fatalError("Must be overridden") }
    
    // MARK: Private
    fileprivate func setup() {
        self.initialize()
        self.installConstraints()
    }
}
