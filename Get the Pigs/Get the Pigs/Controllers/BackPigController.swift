import UIKit
import AVFoundation

// MARK: BackPig
class BackPigController: UIViewController, PigAnimatable {
    
    var pigPlay = SoundsPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
        startAnimate(with: pigButton)
    }
    
    private let pigButton: UIButton = {
        
        let button = UIButton(type: .custom)
        let image = UIImage(named: "miniPigDeletePic2")
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(pressPigButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func pressPigButton() {
        guard let sound = pigPlay.arrayHardPigSound.randomElement() else {
            pigPlay.soundsPlayer(typeArray: pigPlay.arrayHardPigSound[0])
            return
        }
        pigPlay.soundsPlayer(typeArray: sound)
        touchAnimate(with: pigButton)
    }
    
    //MARK: setupView
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.9355793595, green: 0.6879077554, blue: 0.7236670852, alpha: 1)
        view.addSubview(pigButton)
    }
}

//MARK: extension setupConstraints
extension BackPigController {
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            pigButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            pigButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            pigButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            pigButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150)
        ])
    }
}
