//
//  PigAnimatable.swift
//  Get the Pigs
//
//  Created by Марк Коваль on 23/06/2022.
//

import UIKit

protocol PigAnimatable {
    func startAnimate(with button: UIButton)
    func touchAnimate(with button: UIButton)
}

extension PigAnimatable {
    func startAnimate(with button: UIButton) {
        
        UIButton.animate(withDuration: 1,
                         delay: 0,
                         usingSpringWithDamping: 0.1,
                         initialSpringVelocity: 40,
                         options: .curveEaseInOut) {
            button.bounds = CGRect(origin: .zero, size: .init(width: 10, height: 10))
        }
    }
    
    func touchAnimate(with button: UIButton) {
        
        UIButton.animate(withDuration: 0.1,
                         delay: 0,
                         usingSpringWithDamping: 0.5,
                         initialSpringVelocity: 80,
                         options: .curveEaseInOut) {
            button.bounds = CGRect(origin: .zero, size: .init(width: 20, height: 20))
        }
    }
}
