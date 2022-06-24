//
//  extensions+customNavigationBar.swift
//  Get the Pigs
//
//  Created by Марк Коваль on 23/06/2022.
//

import UIKit

extension UIViewController {
    
    func customNavigationBar() {
        self.navigationItem.title = ""
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.9873561263, green: 0.9923167825, blue: 0.6918645501, alpha: 1)
    }
}


