//
//  Navigator.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import Foundation

protocol Navigator {
    associatedtype Destination
    func navigate(to destination: Destination)
}
