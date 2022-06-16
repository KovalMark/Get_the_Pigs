import UIKit
import AVFoundation

// MARK: MouthPig
class MouthPig: UIViewController {
    
    var pigPlay = SoundsPlayer()
    
    @IBOutlet weak var secondPigAnime: UIButton!
    
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
            self.secondPigAnime.bounds = CGRect(origin: .zero, size: .init(width: +10, height: +10))
        }
    }
    
    func touchAnimate() {
        
        UIButton.animate(withDuration: 0.2,
                         delay: 0,
                         usingSpringWithDamping: 0.2,
                         initialSpringVelocity: 10,
                         options: .curveEaseInOut) {
            self.secondPigAnime.bounds = CGRect(origin: .zero, size: .init(width: +20, height: +20))
        }
    }
    
    @IBAction func secondPig(_ sender: UIButton) {
        touchAnimate()
        pigPlay.soundsPlayer(typeArray: pigPlay.arraySoftPigSound.randomElement()!)
    }
}
