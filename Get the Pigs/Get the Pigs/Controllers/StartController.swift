import UIKit
import AVFoundation

// MARK: StartController
class StartController: UIViewController {
    
    var goblinPlay = SoundsPlayer()
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupImage()
        animatePigIcons()
        customNavigationBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        customNavigationBar()
    }
    
    //MARK: Image
    private let startImage: UIImageView = {
        
        let startImage = UIImageView()
        startImage.image = UIImage(named: "Get the Pigs")
        startImage.contentMode = .scaleAspectFit
        startImage.translatesAutoresizingMaskIntoConstraints = false
        
        return startImage
    }()
    
    let leftPigIcons: UIImageView = {
        
        let pigIcons = UIImageView()
        pigIcons.image = UIImage(named: "pigIcons2")
        pigIcons.contentMode = .scaleToFill
        pigIcons.translatesAutoresizingMaskIntoConstraints = false
        
        return pigIcons
    }()
    
    let centralPigIcons: UIImageView = {
        
        let pigIcons = UIImageView()
        pigIcons.image = UIImage(named: "pigIcons1")
        pigIcons.contentMode = .scaleToFill
        pigIcons.translatesAutoresizingMaskIntoConstraints = false
        
        return pigIcons
    }()
    
    let rightPigIcons: UIImageView = {
        
        let pigIcons = UIImageView()
        pigIcons.image = UIImage(named: "pigIcons3")
        pigIcons.contentMode = .scaleToFill
        pigIcons.translatesAutoresizingMaskIntoConstraints = false
        
        return pigIcons
    }()
    
    //MARK: Button
    private let bottomButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9355793595, green: 0.6879077554, blue: 0.7236670852, alpha: 1)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("Поросячья филешка", for: .normal)
        button.addTarget(self, action: #selector(pressBottomButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func pressBottomButton() {
        
        guard let sound = goblinPlay.arrayGoblinSound.randomElement() else {
            goblinPlay.soundsPlayer(typeArray: goblinPlay.arrayGoblinSound[0])
            return
        }
        goblinPlay.soundsPlayer(typeArray: sound)
        
        let backPig = BackPigController()
        navigationController?.pushViewController(backPig, animated: true)
    }
    
    private let centralButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9355793595, green: 0.6879077554, blue: 0.7236670852, alpha: 1)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("Свинкин рот", for: .normal)
        button.addTarget(self, action: #selector(centralButtonButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func centralButtonButton(sender: UIButton!) {
        
        guard let sound = goblinPlay.arrayGoblinSound.randomElement() else {
            goblinPlay.soundsPlayer(typeArray: goblinPlay.arrayGoblinSound[0])
            return
        }
        goblinPlay.soundsPlayer(typeArray: sound)
        
        let mouthPig = MouthPigController()
        navigationController?.pushViewController(mouthPig, animated: true)
    }
    
    private let topButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9355793595, green: 0.6879077554, blue: 0.7236670852, alpha: 1)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("Хрюшкино брюшко", for: .normal)
        button.addTarget(self, action: #selector(topButtonButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func topButtonButton() {
        
        guard let sound = goblinPlay.arrayGoblinSound.randomElement() else {
            goblinPlay.soundsPlayer(typeArray: goblinPlay.arrayGoblinSound[0])
            return
        }
        goblinPlay.soundsPlayer(typeArray: sound)
        
        let bodyPig = BodyPigController()
        navigationController?.pushViewController(bodyPig, animated: true)
    }
    
    //MARK: setupView
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.9838779569, green: 0.9640367627, blue: 0.8820737004, alpha: 1)
        view.addSubview(startImage)
        view.addSubview(leftPigIcons)
        view.addSubview(centralPigIcons)
        view.addSubview(rightPigIcons)
        view.addSubview(topButton)
        view.addSubview(centralButton)
        view.addSubview(bottomButton)
    }
}

//MARK: extension setupConstraints
extension StartController {
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            startImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            startImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            startImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            startImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            leftPigIcons.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            leftPigIcons.topAnchor.constraint(equalTo: startImage.bottomAnchor, constant: 50),
            leftPigIcons.widthAnchor.constraint(equalToConstant: 90),
            leftPigIcons.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        NSLayoutConstraint.activate([
            centralPigIcons.topAnchor.constraint(equalTo: startImage.bottomAnchor, constant: 50),
            centralPigIcons.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centralPigIcons.widthAnchor.constraint(equalToConstant: 90),
            centralPigIcons.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        NSLayoutConstraint.activate([
            rightPigIcons.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            rightPigIcons.topAnchor.constraint(equalTo: startImage.bottomAnchor, constant: 50),
            rightPigIcons.widthAnchor.constraint(equalToConstant: 90),
            rightPigIcons.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        NSLayoutConstraint.activate([
            topButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            topButton.bottomAnchor.constraint(equalTo: centralButton.topAnchor, constant: -25),
            topButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            topButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            centralButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            centralButton.bottomAnchor.constraint(equalTo: bottomButton.topAnchor, constant: -25),
            centralButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            centralButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centralButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            bottomButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            bottomButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            bottomButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            bottomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
