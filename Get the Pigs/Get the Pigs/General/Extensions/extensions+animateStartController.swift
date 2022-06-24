import UIKit
import AVFoundation

// MARK: Add animate for pig image
extension StartController {
    
    func setupImage(with alpha: CGFloat = 1) {
        leftPigIcons.alpha = alpha
        centralPigIcons.alpha = alpha
        rightPigIcons.alpha = alpha
    }

    func animatePigIcons() {
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
            self.leftPigIcons.alpha = 0
        }
        
        UIView.animate(withDuration: 1.5,
                       delay: 1.5,
                       options: [.autoreverse, .repeat]) {
            self.centralPigIcons.alpha = 0
        }
        
        UIView.animate(withDuration: 1.5,
                       delay: 2.0,
                       options: [.autoreverse, .repeat]) {
            self.rightPigIcons.alpha = 0
        }
    }
}
