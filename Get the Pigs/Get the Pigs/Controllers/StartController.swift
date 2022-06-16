import UIKit
import AVFoundation

// MARK: StartController
class StartController: UIViewController {
    
    var goblinPlay = SoundsPlayer()
    
    @IBOutlet weak var pigIcons1: UIImageView!
    @IBOutlet weak var pigIcons2: UIImageView!
    @IBOutlet weak var pigIcons3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatePigIcons()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animatePigIcons()
        // Delete "Back" on navigationItem
        self.navigationItem.title = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        // Delete "Back" on navigationItem
        self.navigationItem.title = ""
    }
    
    // Как избежать force unwrap или тут это допустимо?
    @IBAction func firstButton(_ sender: UIButton) {
        goblinPlay.soundsPlayer(typeArray: goblinPlay.arrayGoblinSound.randomElement()!)
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        goblinPlay.soundsPlayer(typeArray: goblinPlay.arrayGoblinSound.randomElement()!)
    }
    
    @IBAction func thirdButton(_ sender: UIButton) {
        goblinPlay.soundsPlayer(typeArray: goblinPlay.arrayGoblinSound.randomElement()!)
    }
}
