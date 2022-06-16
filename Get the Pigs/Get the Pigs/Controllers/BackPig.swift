import UIKit
import AVFoundation

// MARK: BackPig
class BackPig: UIViewController {
    
    var pigPlay = SoundsPlayer()
    
    @IBOutlet weak var thirdPigAnimate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimate()
    }
    
    func startAnimate() {
        
        UIButton.animate(withDuration: 1,
                         delay: 0,
                         usingSpringWithDamping: 0.2,
                         initialSpringVelocity: 10,
                         options: .curveEaseInOut) {
            self.thirdPigAnimate.bounds = CGRect(origin: .zero, size: .init(width: +10, height: +10))
        }
    }
    
    func touchAnimate() {
        
        UIButton.animate(withDuration: 0.2,
                         delay: 0,
                         usingSpringWithDamping: 0.2,
                         initialSpringVelocity: 10,
                         options: .curveEaseInOut) {
            self.thirdPigAnimate.bounds = CGRect(origin: .zero, size: .init(width: +20, height: +20))
        }
    }
    
    @IBAction func thirdPig(_ sender: UIButton) {
        touchAnimate()
        pigPlay.soundsPlayer(typeArray: pigPlay.arrayHardPigSound.randomElement()!)
    }
    
}
