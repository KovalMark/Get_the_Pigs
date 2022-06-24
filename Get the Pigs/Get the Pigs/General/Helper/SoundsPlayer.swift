import UIKit
import AVFoundation

// MARK: SoundsPlayer
final class SoundsPlayer {
    
    var audioPlayer: AVAudioPlayer?
    let arraySoftPigSound = ["pigSound1", "pigSound5", "pigSound4"]
    let arrayRestrainedPigSound = ["pigSound5", "pigSound10"]
    let arrayHardPigSound = ["pigSound2", "pigSound3", "pigSound8", "pigSound9"]
    let arrayGoblinSound = ["goblinSound1", "goblinSound2", "goblinSound3"]
    
    // MARK: Add random sound's
    func soundsPlayer(typeArray: String) {
        guard let pathToSound = Bundle.main.path(forResource: typeArray, ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: pathToSound)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("error")
        }
    }
}
