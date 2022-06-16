import UIKit
import AVFoundation

// MARK: Add animate for pig image
extension StartController {
    
    func animatePigIcons() {
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
            self.pigIcons1.alpha = 0
        }
        
        UIView.animate(withDuration: 1.5,
                       delay: 1.5,
                       options: [.autoreverse, .repeat]) {
            self.pigIcons2.alpha = 0
        }
        
        UIView.animate(withDuration: 1.5,
                       delay: 2.0,
                       options: [.autoreverse, .repeat]) {
            self.pigIcons3.alpha = 0
        }
    }
}
