import UIKit
import AVFoundation

// MARK: OriginalPig
class OriginalPig: UIViewController {
    
    var pigPlay = SoundsPlayer()
    
    @IBOutlet weak var firstPigAnime: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimate()
    }
    
    // Как избежать повторения методов startAnimate и touchAnimate в контроллерах OriginalPig, MouthPig и BackPig?
    func startAnimate() {
        
        UIButton.animate(withDuration: 1,
                         delay: 0,
                         usingSpringWithDamping: 0.2,
                         initialSpringVelocity: 10,
                         options: .curveEaseInOut) {
            self.firstPigAnime.bounds = CGRect(origin: .zero, size: .init(width: +10, height: +10))
        }
    }
    
    func touchAnimate() {
        
        UIButton.animate(withDuration: 0.2,
                         delay: 0,
                         usingSpringWithDamping: 0.2,
                         initialSpringVelocity: 10,
                         options: .curveEaseInOut) {
            self.firstPigAnime.bounds = CGRect(origin: .zero, size: .init(width: +20, height: +20))
        }
    }
    
    @IBAction func firstPig(_ sender: UIButton) {
        pigPlay.soundsPlayer(typeArray: pigPlay.arraySoftPigSound.randomElement()!)
        touchAnimate()
    }
}
